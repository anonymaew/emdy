FROM alpine
# add bun runtime
RUN apk add yarn 
# install packages
COPY package.json /app/
WORKDIR /app
RUN yarn install && yarn upgrade
# copy source
COPY . /app
# entrypoint
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT /app/entrypoint.sh
