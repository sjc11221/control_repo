class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXI79Duf1WJuOp4waI6xDavHlQOQzXv0FWJxDAyDU5Ef0TKeuL7QdZpkuA5l2l8qcf4iSrvC/WPb3rHKu/tWgn0QbfHYWC0rVJ/ZAO2mSrxwLAbYz3kCZmdJBld6oMhjz4stlb3q0zQ32NiBx4hY9PUfNqKRn9goRw7agPxmJFNAPXfiTULen5tgPSWRnpQ3nmpBxiX5z1w7CmPYafEApVTiop5EDISwiqKqo+kCoYJFUBI1pkF2SEGu4U4bX3Zk5uxhC/YJCmSi3RkDRQqUIc1MLANtrnhBlTl+ZVAr2Kwe2DlFQZRjYUaoms4iGlbmedqCMG/BKqdVDOMRlVKhV5',
  }  
}
