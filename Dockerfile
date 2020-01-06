# Python Builder image
FROM python:3.7-alpine3.10

RUN echo "\n ====> Starting Python Builder <==== \n" && \
    apk add --no-cache \
        gcc \
        git \
        libc-dev \
        libffi-dev \
        make \
        openssl-dev \
        python3-dev && \
    cd /opt && \
    git clone https://github.com/threat9/routersploit.git && \
    cd routersploit && \
    pip3 install --no-cache --upgrade -r requirements.txt

CMD ["python", "/opt/routersploit/rsf.py"]

