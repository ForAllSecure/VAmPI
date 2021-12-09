FROM python:3.7-alpine

RUN mkdir /vampi
RUN apk --update add bash nano musl-dev gcc g++

ENV vulnerable=1
ENV tokentimetolive=60

WORKDIR /vampi
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY . /vampi

ENTRYPOINT ["python"]
CMD ["app.py"]