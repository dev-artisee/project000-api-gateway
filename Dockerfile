FROM devopsfaith/krakend:2.4.3

WORKDIR /etc/krakend

# timezone setting
ENV TZ=Asia/Seoul
RUN apk add --no-cache tzdata && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone

COPY . .

EXPOSE 8080

ENTRYPOINT ["/usr/bin/krakend", "run", "-c", "/etc/krakend/krakend.json"]