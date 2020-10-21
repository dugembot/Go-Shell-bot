FROM ubuntu:latest
RUN apt-get update && \
    apt install -y curl wget unzip \
    aria2 git python3 python3-pip \
    make python build-essential
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install nodejs -y
RUN npm config set unsafe-perm true
WORKDIR /app
COPY . /app
RUN chmod -R 777 /app && \
    npm install
CMD node server
