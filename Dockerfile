FROM shosoar/alpine-python-opencv
MAINTAINER Jerome Vonk


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE  80

CMD [ "python", "./main.py" ]

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y