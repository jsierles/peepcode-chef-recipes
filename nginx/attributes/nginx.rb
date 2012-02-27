default.nginx.dir = "/etc/nginx"
default.nginx[:worker_processes] = 6
default.nginx[:worker_connections] = 2048
default.nginx[:keepalive_timeout] = 60
