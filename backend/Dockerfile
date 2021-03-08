FROM python:3.9.2

RUN apt-get update && apt-get install -y \
    netcat \
 && rm -rf /var/lib/apt/lists/*

ARG SCRIPT_file=/usr/local/bin/wait-for
RUN wget https://raw.githubusercontent.com/eficode/wait-for/v2.1.0/wait-for -O $SCRIPT_file
RUN chmod +x $SCRIPT_file

WORKDIR /app

ARG REQUIREMENTS=requirements.txt
COPY $REQUIREMENTS .
RUN pip install --no-cache-dir -r $REQUIREMENTS
