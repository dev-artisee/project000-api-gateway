FROM devopsfaith/krakend:2.4.3

WORKDIR /etc/krakend

COPY krakend.json .

EXPOSE 8080

ENTRYPOINT ["/usr/bin/krakend", "run", "-c", "/etc/krakend/krakend.json"]