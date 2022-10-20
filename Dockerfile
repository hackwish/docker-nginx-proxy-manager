FROM jc21/nginx-proxy-manager:latest

RUN apt-get update && apt-get install -y python3-dev python3-setuptools libffi-dev libssl-dev

RUN pip install --upgrade pip
RUN python3 -m pip install --upgrade pip setuptools wheel

RUN curl https://sh.rustup.rs -sSf | bash -s -- --profile minimal -y

ENV PATH="/root/.cargo/bin:${PATH}"

RUN pip install certbot-dns-google==1.25.0