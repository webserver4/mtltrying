FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN python3 -m venv venv
RUN venv/bin/pip install -U -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
