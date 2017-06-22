FROM ruby:2.3

RUN mkdir -p /opt/site

RUN gem install github-pages --no-ri --no-rdoc
RUN gem install mini_racer
RUN gem install html-proofer

WORKDIR /opt/site

VOLUME /opt/site

EXPOSE 4000

CMD jekyll serve --trace --verbose --host 0.0.0.0
