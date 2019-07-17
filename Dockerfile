FROM alpine

RUN apk update --update && apk add --no-cache musl-dev go git dep gcc && \
git clone https://github.com/milekz/pewpew.git /root/go/src/pewpew && \
cd /root/go/src/pewpew && \
dep ensure && \
go build main.go && \
mv main /usr/local/bin/pewpew && apk del musl-dev go git dep gcc && cd /

WORKDIR /root/go/src/pewpew

CMD [ "/usr/local/bin/pewpew" ]
