FROM python:3.9.2

RUN apt-get update && apt-get install -y \
    nginx=1.* \
    # Dependency of "wait-for" script.
    netcat=1.* \
 && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/

ARG WAIT_SCRIPT=/usr/local/bin/wait-for
RUN wget https://raw.githubusercontent.com/eficode/wait-for/v2.1.0/wait-for -O $WAIT_SCRIPT
RUN chmod +x $WAIT_SCRIPT

WORKDIR /usr/src/app

ARG REQUIREMENTS=requirements.txt
COPY $REQUIREMENTS .
RUN pip install --no-cache-dir -r $REQUIREMENTS
