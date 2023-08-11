python3 koboldcpp.py  \
--model ggml-model-q4_0.bin \
--launch \
--threads 6 \
--contextsize 2048 \
--stream \
--smartcontext \
--usemirostat 2 0.5 0.1 \
--usemlock \
--debugmode 