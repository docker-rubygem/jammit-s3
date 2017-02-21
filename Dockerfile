FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.6.0.2

RUN gem install jammit-s3 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jammit-s3"]
CMD ["--help"]
