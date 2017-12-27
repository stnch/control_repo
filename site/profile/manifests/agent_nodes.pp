class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web-puppet.z192.lan':}
  dockeragent::node {'db-puppet.z192.lan':}
  dockeragent::node {'minetest.z192.lan':}
  host { 'web-puppet.z192.lan':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host { 'db-puppet.z192.lan':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
