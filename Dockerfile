# print your code here
FROM python:3

WORKDIR /src

ADD /src/server.py /

CMD [ "python", "./src/server.py" ]