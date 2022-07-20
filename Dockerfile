FROM python:3.8.5-slim-buster

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        wget    \
        git \
        gcc \
        python3-dev \
        default-libmysqlclient-dev \
        ca-certificates \
        locales && \
    rm -rf /var/lib/apt/lists/*  && \
    wget https://github.com/allure-framework/allurectl/releases/latest/download/allurectl_linux_amd64 -O /usr/bin/allurectl && \
    chmod +x /usr/bin/allurectl \
    && sed -i -e 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale

WORKDIR /folder

COPY ./requirements.txt /folder

RUN python -m pip install --no-cache-dir -r /folder/requirements.txt

CMD ["python3"]
