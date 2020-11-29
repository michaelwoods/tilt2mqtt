FROM python:3

RUN pip install beacontools paho-mqtt requests pybluez

RUN mkdir /app
COPY tilt2mqtt.py /app/
WORKDIR /app

ENTRYPOINT [ "python", "tilt2mqtt.py" ]
