FROM golang:1.14-alpine
MAINTAINER Bas van Beek <bas.vanbeek@gmail.com> (https://github.com/basvanbeek)
#MAINTAINER Atsushi Nagase <a@ngs.io> (https://ngs.io)

LABEL "com.github.actions.name"="Go Release Binary"
LABEL "com.github.actions.description"="Automate publishing Go build artifacts for GitHub releases"
LABEL "com.github.actions.icon"="cpu"
LABEL "com.github.actions.color"="orange"

LABEL "name"="Automate publishing Go build artifacts for GitHub releases through GitHub Actions"
LABEL "version"="1.0.3"
LABEL "repository"="https://github.com/basvanbeek/go-release.action"
LABEL "homepage"="https://github.com/basvanbeek/go-release.action"
LABEL "maintainer"="Bas van Beek (bas.vanbeek@gmail.com)"
LABEL "originalauthor"="Atsushi Nagase <a@ngs.io> (https://ngs.io)"

RUN apk add --no-cache curl jq git build-base bash zip

ADD entrypoint.sh /entrypoint.sh
ADD build.sh /build.sh
ENTRYPOINT ["/entrypoint.sh"]
