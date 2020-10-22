# print your code here
FROM python:3

ADD src/server.py /

CMD [ "python", "./server.py" ]