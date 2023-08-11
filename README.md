## A light Docker build for KoboldCPP 

1. Simply bring your own models into the /models folder
2. Start Docker
3. Start the build
```
chmod 555 build_kobold.sh
./build_kobold.sh
```

4. You can adjust the start_program.sh bash script. It simply contains the runtime settings passed into the koboldcpp.py Python module

Default module settings in the bash script now:
- model ggml-model-q4_0.bin 
- launch 
- threads 6 
- contextsize 2048 
- stream 
- smartcontext 
- usemirostat 2 0.5 0.1 
- usemlock 
- debugmode 

![image](https://github.com/snakewizardd/koboldCppDocker/assets/83378208/1eed7b40-3936-4441-bdbc-f79f20969032)
![image](https://github.com/snakewizardd/koboldCppDocker/assets/83378208/499204fb-bd7d-4267-a3b7-8562f94aaa6b)
