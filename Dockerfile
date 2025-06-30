FROM debian:latest

RUN pip3 install -U -r requirements.txt
CMD python3 RiZoeLXSpam
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip -y
RUN python3 -m pip install --break-system-packages -U pip
RUN mkdir /app/
WORKDIR /app/
