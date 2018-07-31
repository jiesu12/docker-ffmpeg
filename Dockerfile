FROM jiesu/alpine

RUN apk --no-cache add ffmpeg

RUN addgroup -g 1000 jie && adduser -D -G jie -u 1000 jie

VOLUME /files

RUN chown jie:jie /files

WORKDIR /files

CMD ["--help"]
ENTRYPOINT ["ffmpeg"]

