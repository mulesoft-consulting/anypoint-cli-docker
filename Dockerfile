#
# To build and push the container image to dockerhub:
#
#   docker build -t integrational/anypoint-cli:3.0.0 .
#   docker login
#   docker push integrational/anypoint-cli:3.0.0
#
# To run:
#
#   docker run --rm -it integrational/anypoint-cli:3.0.0 --username=user --password=pwd
#
# or
#
#   alias anypoint-cli='docker run --rm --name anypoint-cli -it -e ANYPOINT_USERNAME="$(echo $ANYPOINT_USERNAME)" -e ANYPOINT_PASSWORD="$(echo $ANYPOINT_PASSWORD)" integrational/anypoint-cli:3.0.0'
#   export ANYPOINT_USERNAME=user
#   export ANYPOINT_PASSWORD=pwd
#   anypoint-cli
#   anypoint-cli --environment=Staging api-mgr api list -o json
#

FROM node:8.12.0

MAINTAINER Gerald Loeffler <gerald@integrational.eu>

RUN npm install -g anypoint-cli@3.0.0

ENTRYPOINT [ "anypoint-cli" ]
