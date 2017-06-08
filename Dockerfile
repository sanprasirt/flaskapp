FROM ubuntu:latest
MAINTAINER Sanprasirt Boonma "sanprasirt@pccth.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install flask
ENTRYPOINT ["python"]
CMD ["app.py"]
