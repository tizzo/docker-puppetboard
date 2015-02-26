FROM ubuntu:14.04
MAINTAINER Howard Tyson "howard@howardtyson.com"

RUN apt-get -y install wget
RUN wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
RUN dpkg -i puppetlabs-release-trusty.deb
RUN apt-get update
#RUN apt-get install -y puppet
RUN apt-get -y install ruby ruby-dev build-essential
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem install --no-rdoc --no-ri puppet
RUN puppet module install puppetlabs-apache
RUN puppet module install nibalizer-puppetboard
ADD puppetboard.pp /
RUN puppet apply puppetboard.pp
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
Add settings.py /srv/puppetboard/puppetboard/settings.py
#Add file.pp /
#RUN puppet apply file.pp
