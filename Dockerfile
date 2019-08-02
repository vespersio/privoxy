FROM alpine:latest
RUN apk --no-cache add openssh-client privoxy && \
    mkdir /root/.ssh
WORKDIR /etc/privoxy/
EXPOSE 1080:1080/tcp
COPY ./config /etc/privoxy/config
CMD ["sh","-c","privoxy"]
