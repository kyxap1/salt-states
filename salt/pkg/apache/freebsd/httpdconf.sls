comment_listen:
  file.comment:
    - name: /usr/local/etc/apache22/httpd.conf
    - regex: ^Listen 80

/usr/local/etc/apache22/httpd.conf:
  file.append:
    - text:
      - include etc/apache22/apache2-tuned.conf
      - include etc/apache22/vhosts.conf

/usr/local/etc/apache22/apache2-tuned.conf:
  file.managed:
    - source: salt://pkg/apache/freebsd/apache2-tuned.conf
    - replace: false

/usr/local/etc/apache22/vhosts.conf:
  file.managed:
    - source: salt://pkg/apache/freebsd/vhosts.conf
    - replace: false
