FROM alpine
RUN apk add --no-cache curl

WORKDIR /app
COPY status-check.sh .
RUN chmod +x status-check.sh

RUN echo "* * * * * /bin/sh /app/status-check.sh" >> /etc/crontabs/root
RUN echo "* * * * * sleep 30; /bin/sh /app/status-check.sh" >> /etc/crontabs/root

CMD ["crond", "-f"]