FROM dock0/webapp
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed base-devel
ADD source /srv/app
RUN bundle install --gemfile /srv/app/Gemfile
ENV PORT 8080
