class { 'java' :
  package => 'java-1.8.0-openjdk-devel',
}


class {'postgresql::server':
	ip_mask_allow_all_users => '0.0.0.0/0',
	listen_addresses => '*',
	postgres_password => 'password',
}

include wget



class { 'wildfly':
  version        => '10.1.0',
  install_source => 'http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.tar.gz',
}

