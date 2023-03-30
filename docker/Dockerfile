FROM debian:buster-slim

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8


RUN apt-get update
RUN apt-get install -y python3 wget zip unzip
RUN apt-get install -y python3-pip python3-venv
# Installing dependencies
RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    lbzip2 \
    libfftw3-dev \
    libgdal-dev \
    libgeos-dev \
    libgsl0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libhdf4-alt-dev \
    libhdf5-dev \
    libjq-dev \
    libpq-dev \
    libproj-dev \
    libprotobuf-dev \
    libnetcdf-dev \
    libsqlite3-dev \
    libssl-dev \
    libudunits2-dev \
    netcdf-bin \
    postgis \
    protobuf-compiler \
    # sqlite3 \
    tk-dev \
    unixodbc-dev \
    libsasl2-dev \
    libv8-dev \
    libsodium-dev \
    liblzma-dev \
    # openjdk-14-jdk \
    libglpk-dev \
    default-jre \
    default-jdk \
    r-cran-rjava \
    tesseract-ocr \
    libtesseract-dev \
    libpoppler-cpp-dev \
    libusb-1.0 \
    procps \
    rpi.gpio

# procps para poder usar comando ps dentro del contenedor
# rpi.gpio para usar GPIO de raspberry pi

COPY /detector /home/detector

WORKDIR home/detector

RUN pip3 install virtualenv
ENV VIRTUAL_ENV=/opt/venv/tflite1-env
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"


RUN python3 -m pip install pip --upgrade
RUN python3 -m pip install -r requirements.txt




################

#if [ $# -eq 0 ]; then
#  DATA_DIR="./"
#else
#  DATA_DIR="$1"
#fi

# # Download TF Lite models (already in the directory /detector"
# FILE=${DATA_DIR}/efficientdet_lite0.tflite
# if [ ! -f "$FILE" ]; then
#  curl \
#    -L 'https://storage.googleapis.com/download.tensorflow.org/models/tflite/task_library/object_detection/rpi/lite-model_efficientdet_lite0_detection_metadata_1.tflite' \
#    -o ${FILE}
#fi

#FILE=${DATA_DIR}/efficientdet_lite0_edgetpu.tflite
#if [ ! -f "$FILE" ]; then
#  curl \
#    -L 'https://storage.googleapis.com/download.tensorflow.org/models/tflite/task_library/object_detection/rpi/efficientdet_lite0_edgetpu_metadata.tflite' \
#    -o ${FILE}
#fi

# RUN python3 /home/detector/detect.py --model efficientdet_lite0.tflite
