FROM alpine
LABEL "repository"="https://github.com/resideo/pubspec-bump"
LABEL "homepage"="https://github.com/resideo/pubspec-bump"
LABEL "maintainer"="Resideo"

RUN apk update && apk add bash git
RUN wget -O /usr/local/bin/yaml "https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64"