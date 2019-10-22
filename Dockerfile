FROM alpine
LABEL "repository"="https://github.com/resideo/pubspec-bump"
LABEL "homepage"="https://github.com/resideo/pubspec-bump"
LABEL "maintainer"="Resideo"

COPY bump.sh /

RUN apk update && apk add bash git
RUN wget -O /usr/local/bin/yaml "https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64"
RUN wget -O /usr/local/bin/semver "https://raw.githubusercontent.com/fsaintjacques/semver-tool/3.0.0/src/semver"

CMD [ "/bump.sh" ]