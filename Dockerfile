#
# https://github.com/integrational/anypoint-cli-docker
# https://hub.docker.com/r/integrational/anypoint-cli
#

FROM node:8.12.0

MAINTAINER Gerald Loeffler <gerald@integrational.eu>

RUN npm install -g anypoint-cli@3.0.0

ENTRYPOINT [ "anypoint-cli" ]
