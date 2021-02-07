FROM ubuntu:20.04

RUN apt update -y
RUN apt install -y python3 python3-pip git tree
RUN which python3
RUN python3 --version
RUN pip3 install piano_transcription_inference
RUN git clone https://github.com/bytedance/piano_transcription ~/piano_transcription
RUN cd ~/piano_transcription
RUN pwd && tree
RUN pip3 install -r requirements.txt
