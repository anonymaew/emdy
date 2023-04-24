FROM alpine
# add bun runtime
RUN apk add bash curl entr unzip yarn 
# install packages
COPY package.json /app/
WORKDIR /app
RUN yarn install
# copy source
COPY . /app
# expose volume
VOLUME ["/app/dist", "/app/src/pages"]
# entrypoint
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT /app/entrypoint.sh
