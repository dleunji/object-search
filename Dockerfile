# FROM python:3.8-slim
# RUN mkdir workspace
# WORKDIR /workspace
# COPY . .
# RUN apt-get update && apt-get install -y git && pip install --no-cache-dir -r requirements.txt
# RUN pip install --pre jina
# EXPOSE 45678
# CMD ["python", "app.py", "-t", "query_restful", "-r", "original"]

FROM dleunji/object-search-data
WORKDIR /workspace
EXPOSE 45678
CMD ["python", "app.py", "-t", "query_restful", "-r", "original"]