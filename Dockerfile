FROM python:3.9-slim
WORKDIR /app
COPY reqs.txt .
RUN pip install -r reqs.txt
COPY . .
RUN cmod +x entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]