FROM alpine

RUN apk update && apk add curl

ADD giteaPR.sh /
RUN chmod +x /giteaPR.sh

ENV GITEA_HOST=git.cluster.fun
ENV ACCESS_KEY=

ENTRYPOINT [ "/giteaPR.sh" ]
