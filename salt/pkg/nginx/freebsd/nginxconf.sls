/usr/local/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://pkg/nginx/freebsd/nginx.conf
    - replace: false

/usr/local/etc/nginx/vhosts.conf:
  file.managed:
    - source: salt://pkg/nginx/freebsd/vhosts.conf
    - replace: false

