FROM docker:latest

LABEL "repository"="https://github.com/par-tec/docker-push-gar-image"
LABEL "maintainer"="Daniele Marcocci <daniele.marcocci@par-tec.it>"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
