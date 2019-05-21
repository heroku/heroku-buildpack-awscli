FROM heroku/heroku:18

COPY . /tmp/buildpack

RUN mkdir /tmp/build /tmp/cache /tmp/env

RUN /tmp/buildpack/bin/detect /tmp/build
RUN /tmp/buildpack/bin/compile /tmp/build /tmp/cache /tmp/env
