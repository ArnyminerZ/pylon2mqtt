FROM python:3.13-slim

RUN pip install --root-user-action --no-cache-dir pyserial paho-mqtt construct

ADD pylon_to_mqtt.py /
ADD support/*.py support/

ENTRYPOINT ["python3", "pylon_to_mqtt.py"]
