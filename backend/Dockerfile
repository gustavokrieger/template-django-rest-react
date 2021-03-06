FROM python:3.9.2

WORKDIR /app

ARG REQUIREMENTS=requirements.txt
COPY $REQUIREMENTS .
RUN pip install --no-cache-dir -r $REQUIREMENTS
