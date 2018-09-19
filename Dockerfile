FROM ammolytics/firebase-docker:latest
MAINTAINER Eric Higgins <erichiggins@gmail.com>

RUN apk upgrade --update \
  && apk add ruby ruby-dev yaml yaml-dev ruby-json ruby-rake \
  && gem install --no-document sass safe_yaml jekyll jekyll-paginate jekyll-sass-converter jekyll-sitemap jekyll-feed jekyll-redirect-from

