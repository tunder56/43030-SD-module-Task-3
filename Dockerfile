FROM python:3.9-slim
WORKDIR /app
COPY reqs.txt .
RUN apt-get install Git
COPY . .
RUN chmod +x /app/.github/scripts/entrypoint.sh
ENTRYPOINT [ "/app/.github/scripts/entrypoint.sh" ]