FROM ubuntu:18.04

RUN apt update -y
RUN apt install -y python3.7 python3-pip git tree libfreetype6-dev libpng-dev
RUN which python3
RUN python3 --version
RUN pip3 install piano_transcription_inference
RUN git clone https://github.com/bytedance/piano_transcription /root/piano_transcription && cd /root/piano_transcription && pwd && tree && pip3 install -r requirements.txt
