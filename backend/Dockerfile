FROM python:3.9.2

RUN apt-get update && apt-get install -y \
    # Dependency of "wait-for" script.
    netcat \
 && rm -rf /var/lib/apt/lists/*

ARG FILE=/usr/local/bin/wait-for
RUN wget https://raw.githubusercontent.com/eficode/wait-for/v2.1.0/wait-for -O $FILE
RUN chmod +x $FILE

WORKDIR /app

ARG REQUIREMENTS=requirements.txt
COPY $REQUIREMENTS .
RUN pip install --no-cache-dir -r $REQUIREMENTS
