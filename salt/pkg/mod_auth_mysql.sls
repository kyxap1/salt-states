mod_auth_mysql:
  pkg:
    - installed
    - name: {{ pillar['mod_auth_mysql'] }}
  file.uncomment:
    - name: /usr/local/etc/apache22/httpd.conf
    - regex: LoadModule mysql_auth_module
    - require:
      - pkg: {{ pillar['mod_auth_mysql'] }}
