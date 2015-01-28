$requiredPackages = [
'curl', 'build-essential', 'libfontconfig1', 'python',
             'nodejs', 'npm',  'g++', 'make', 'wget', 'tar', 'mc', 'htop', 'git',  'vim', 'mongodb-org'
]


 exec { 
   "install bower":
  
	command => 'npm install -g bower',
  
	path => "/usr/bin/",

	require => Package['npm'];
   "install rhc":
  
	command => 'gem install rhc',
  
	path => "/usr/bin/",

	require => Package['python'];
   "import MongoDB public GPG key":
  
	command => 'sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10',
  
	path => "/usr/bin/";
   "Crete a list file for MongoDB":
  
	command => 'echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | sudo tee /etc/apt/sources.list.d/mongodb.list',
  
	path => ["/bin/", "/usr/bin/"];
   "Reload local package database":
  
	command => 'sudo apt-get update',
  
	path => "/usr/bin/";
 "install gulp":
  
	command => 'sudo npm install -g gulp',
  
	path => "/usr/bin/",

	require => Package['npm'];
  }

 file { '/usr/bin/node':
  ensure => 'link',
  target => "/usr/bin/nodejs",
  require => Package['nodejs'],
}

 



  package {
  $requiredPackages:
    ensure => latest,
  }





