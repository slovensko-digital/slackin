FROM node:6.17-slim

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 3000

CMD ./bin/slackin --coc "$SLACK_COC" --channels "$SLACK_CHANNELS" --port $PORT $SLACK_SUBDOMAIN $SLACK_API_TOKEN
