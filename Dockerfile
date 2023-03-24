FROM debian:buster-slim

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN apt-get update
RUN apt-get install -y python3 wget zip unzip
RUN apt-get install -y python3-pip python3-venv

# RUN apt-get dist-upgrade -f
COPY TensorFlow-Lite-Object-Detection-on-Android-and-Raspberry-Pi tflite1
# RUN mv TensorFlow-Lite-Object-Detection-on-Adnroid-and-Raspberry-Pi tflite1
WORKDIR tflite1

RUN pip3 install virtualenv
ENV VIRTUAL_ENV=/opt/venv/tflite1-env
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"


RUN bash get_pi_requirements.sh

RUN wget https://storage.googleapis.com/download.tensorflow.org/models/tflite/coco_ssd_mobilenet_v1_1.0_quant_2018_06_29.zip
RUN unzip coco_ssd_mobilenet_v1_1.0_quant_2018_06_29.zip -d Sample_TFlite_model

# RUN python3 TFLite_detection_webcam.py --modeldir=Sample_TFLite_model
