FROM node:latest

ARG PORT
ENV PORT ${PORT:-80}

RUN apt-get -y update && apt -y install dnsutils netcat

COPY  service2/. .
EXPOSE ${PORT}
CMD ["bash", "entrypoint.sh"]
