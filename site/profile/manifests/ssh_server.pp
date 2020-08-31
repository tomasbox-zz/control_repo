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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCt9jLRmyU9dndLlZpX/bKcXC1cB8xk2c/0On26TXBUMii6aJdaddzB//k4Yy7E//5cBMgmcyFgQ+QAA8kVU6epmKFal1ThbaN7Q7unQuviNgfkYMT1NkQfunwi620pt4naukDMkMx6Bv/X8pE50iIOeyMacTcd2+9Otz/ozbj8dbiZ/tWPIi2KwataTgMaRhTpqFDy2hwZv0e1FjE52Wd/jgm1TZsSNGVMORh+EsrVPCBWZ8DOheonzCXVFlDe+p3mvCkyjZrC5Hu4ZCnXMqdFVNIHIDSmnNquEC4eexfCdT45CoflBnIsorXbPZ/TOzwKg90dcwYq8wcriPiiqSR5',
  }  
}
