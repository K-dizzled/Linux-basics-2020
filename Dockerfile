FROM python:latest

COPY src/server.py ./server.py

CMD ["python","/server.py"]