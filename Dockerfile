FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install git curl python3-pip -y

RUN pip3 install -U pip

RUN mkdir /app/

WORKDIR /app/

COPY . /app/

RUN pip3 install -U -r Zsetup.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","ZeroTwo.py"]
