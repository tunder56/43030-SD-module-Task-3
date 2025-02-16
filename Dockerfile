FROM python:3.9-slim
WORKDIR /app
COPY reqs.txt .
RUN pip install -r reqs.txt
COPY . .
RUN chmod +x /app/.github/scripts/entrypoint.sh
ENTRYPOINT [ "/app/.github/scripts/entrypoint.sh" ]