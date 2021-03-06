FROM ucsdets/datascience-notebook:2020.2-stable

USER root


# Install python3, pip3
RUN apt-get update --fix-missing && \
    apt-get install -y git \
                       build-essential \
                       cmake \
                       vim \
                       wget \
                       unzip \
                       ffmpeg


# Upgrade pip
RUN pip install --upgrade pip

RUN pip install --no-cache-dir numpy \
                               scipy \
                               pandas \
                               pyyaml \
                               notebook \
                               matplotlib \
                               seaborn \
                               scikit-image \
                               scikit-learn \
                               Pillow \
                               python-math \
                               opencv-python \
                               ffmpeg-python \
