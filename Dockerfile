FROM jekyll/jekyll:4.2.0

MAINTAINER Vincent Dubois <v.dubois@primobox.com>

RUN gem install jekyll bundler

EXPOSE 4000

RUN gem install jekyll-feed -v 0.11.0
RUN gem install jekyll-sitemap -v 1.2.0
RUN gem install jekyll-paginate -v 1.1.0
RUN gem install jekyll-seo-tag -v 2.5.0
RUN gem install jekyll-archives -v 2.1.1
RUN gem install kramdown -v 1.17.0
RUN gem install rouge -v 3.3.0
RUN gem install jekyll -v 3.8.5
RUN gem install addressable -v 2.6.0
RUN gem install em-websocket -v 0.5.1
RUN gem install jekyll-watch -v 2.1.2
RUN gem install liquid -v 4.0.1
RUN gem install public_suffix -v 3.0.3
RUN gem install concurrent-ruby -v 1.1.4
RUN gem install sass -v 3.7.3
RUN gem install listen -v 3.1.5
RUN gem install rb-fsevent -v 0.10.3
RUN gem install rb-inotify -v 0.10.0
RUN gem install ruby_dep -v 1.5.0
RUN gem install ffi -v 1.10.0
RUN gem install jekyll-gist -v 1.5.0

EXPOSE 35729

VOLUME /blog
WORKDIR /blog

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--incremental"]
