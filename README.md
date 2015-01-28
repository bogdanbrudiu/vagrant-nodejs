bogdanbrudiu/vagrant-nodejs
============================

This repository allows you to setup an NodeJS env using
vagrant for development and testing.

# Requirements

* [Virtual Box](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)

# Installation

```bash
git clone --recursive https://github.com/bogdanbrudiu/vagrant-nodejs.git
cd vagrant-nodejs
vagrant up
vagrant ssh
cd /vagrant/app
npm install
npm start
```

Open your browser to 127.0.0.1:3000 and go through your NodeJS app
wizard.

# Configuration

This setup will install bower, gulp & mongodb.
