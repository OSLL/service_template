FROM python:3.11

WORKDIR /app

RUN apt-get update

## Not nessesary but useful for the debug
#RUN apt-get install -y htop vim git net-tools psmisc

COPY app/requirements.txt /app/requirements.txt
RUN pip install --upgrade pip

RUN pip install -r /app/requirements.txt

CMD ["/bin/bash", "/app/entrypoint.sh"]
