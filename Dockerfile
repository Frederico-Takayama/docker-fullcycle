FROM ubuntu:latest

# WORKDIR usr/local
WORKDIR /golang

# https://go.dev/doc/install > how to install golang

# https://www.alura.com.br/artigos/curl-como-usar?gclid=CjwKCAjwgqejBhBAEiwAuWHioLHGr1Q2s-5-R-lUAeVtgugAXASCL79HHYxlPl5_yXQShnhTiPL9QRoCqHkQAvD_BwE
# https://www.digitalocean.com/community/tutorials/how-to-install-go-on-ubuntu-20-04
RUN apt-get update && \
    apt install curl -y && \
    apt install nano

RUN curl -OL https://go.dev/dl/go1.20.4.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz && \
    rm -rf go1.20.4.linux-amd64.tar.gz

ENV PATH "=$PATH:/usr/local/go/bin"

# CMD ["bash"]