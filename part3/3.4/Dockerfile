FROM docker

RUN apk add git

RUN apk add bash

COPY ./builder.sh .

RUN chmod +x /builder.sh

ENTRYPOINT ["/builder.sh"]
