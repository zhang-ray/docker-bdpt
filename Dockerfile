FROM ubuntu:20.04

RUN which python3
RUN python3 --version
RUN git clone https://github.com/bytedance/piano_transcription
RUN pip3 install piano_transcription_inference
RUN cd piano_transcription
RUN pip3 install -r requirements.txt
