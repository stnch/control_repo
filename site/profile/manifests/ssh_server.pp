class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@puppet-master.z192.lan':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCo/dBUO/stX4IAuKhZvVvWCNiD3g1geUfSlA1M0g2YbqQ1FkVgRRttWlClfIF+Drlk/CZyu/zNYszSwQ6TNNzbZYdRLAYgHWQaTBTt2hhR+nckWQ2sZi0bKoCiBR6dYJC+Ljjcdy78GOI4QJDR8/OJyIWamorJZ+NjAx/X9yqkg39hjYzuyG4qBwlfS7Zp/LM8dGoNzycffgTaNFb9/iT5ISdus3ls4qUJIu998R5lI6Rv5L5Z6F+uZXhUfySXpP+xQFv2jyIlggL+Yh75agQpqC4SYoLSDGOnbliz5j3sQ+qDiNhqMymJP+pn6mclC8RT0g0jGF26UvwHZNnyFyk5',
	}
}
