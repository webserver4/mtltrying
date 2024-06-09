FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN apt install python3.10-venv -y
RUN python3 -m venv venv
RUN venv/bin/pip3 install -U -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
