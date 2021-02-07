FROM openjdk:20.04

RUN git clone https://github.com/bytedance/piano_transcription
RUN pip install piano_transcription_inference
RUN cd piano_transcription
RUN pip install -r requirements.txt
