FROM python:3.8-alpine

LABEL Name=fbexp Version=0.0.1
EXPOSE 8765

WORKDIR /app

ADD requirements.txt /app
RUN  python3 -m pip --no-cache-dir install -r requirements.txt

ADD . /app


CMD ["python3", "-m", "fbexp"]
