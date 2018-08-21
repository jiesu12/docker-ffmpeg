FROM jiesu/alpine

RUN apk --no-cache add ffmpeg

VOLUME /files

RUN chown jie:jie /files

WORKDIR /files

CMD ["--help"]
ENTRYPOINT ["ffmpeg"]

