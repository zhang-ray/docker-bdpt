FROM ubuntu:20.04

RUN apt update -y
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt update -y
RUN apt install -y python3.7 git tree libfreetype6-dev libpng-dev curl
RUN which python3 && python3 --version
RUN curl https://bootstrap.pypa.io/get-pip.py -o /root/get-pip.py && python3 /root/get-pip.py
RUN pip3 install piano_transcription_inference
RUN git clone https://github.com/bytedance/piano_transcription /root/piano_transcription && cd /root/piano_transcription && pwd && tree && pip3 install -r requirements.txt
