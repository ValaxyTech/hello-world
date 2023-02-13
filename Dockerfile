FROM gitlab/gitlab-runner:alpine
WORKDIR /app
COPY . /app
RUN apk add yarn && yarn install

RUN yarn --version        # this layer prints 1.16.0
EXPOSE 3000
CMD ["yarn", "run", "start"]
