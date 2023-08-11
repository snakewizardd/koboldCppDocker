FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    sudo

RUN sudo apt install -y python3-pip 
RUN yes | sudo apt install gfortran 
RUN yes | sudo apt install gcc 
RUN yes | sudo apt install git 

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir ./home/koboldcpp_dir
COPY ./koboldcpp_dir ./home/koboldcpp_dir

WORKDIR /home/koboldcpp_dir
RUN make

COPY ./models /home/koboldcpp_dir


WORKDIR /
COPY start_program.sh /home/koboldcpp_dir

WORKDIR /home/koboldcpp_dir
RUN chmod 555 start_program.sh

EXPOSE 5001
CMD "./start_program.sh"

