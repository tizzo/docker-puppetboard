# Docker Puppetboard

A simple [Puppetboard](https://github.com/puppet-community/puppetboard). Intended for use with
[Docker PuppetDB](https://github.com/tizzo/docker-puppetdb).

Useage:

The important requirement is that a puppetdb container is exposed on port 8080 unencrypted and
linked as `puppetdb` used as a hostname to connect.

    docker run --name puppetboard --link puppetdb:puppetdb -d -P puppetboard
