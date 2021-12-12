# Port
# syntax=docker/dockerfile:1

FROM python:3.8

COPY ./requirements.txt requirements.txt

RUN pip3 install -r requirements.txt
EXPOSE 8888

CMD ["jupyter","notebook", "--port", "8888", "--ip", "0.0.0.0", "--allow-root"]