class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web-puppet.z192.lan':}
  dockeragent::node {'db-puppet.z192.lan':}
}
