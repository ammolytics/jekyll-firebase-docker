FROM ammolytics/firebase-docker:latest
MAINTAINER Eric Higgins <erichiggins@gmail.com>

ENV HOME /home/node
ENV GEM_HOME $HOME/gems
ENV PATH $GEM_HOME/bin:$PATH

RUN apk upgrade --update \
  && apk add \
    ruby \
    ruby-dev \
    ruby-bundler \
    ruby-bigdecimal \
    ruby-io-console \
    ruby-irb \
    yaml \
    yaml-dev \
    ruby-json \
    ruby-rake

USER node

RUN gem install --no-document \
    bundler \
    sass \
    safe_yaml \
    jekyll \
    jekyll-paginate \
    jekyll-sass-converter \
    jekyll-sitemap \
    jekyll-feed \
    jekyll-redirect-from \
    rdoc \
  && gem cleanup

