FROM python:3.7-slim

RUN pip install --root-user-action pyserial paho-mqtt construct typing-extensions

ADD pylon_to_mqtt.py /
ADD support/*.py support/

ENTRYPOINT ["python3", "pylon_to_mqtt.py"]
