create_phpini:
  file.managed:
    - name: /usr/local/etc/php.ini
    - replace: false
    - require:
      - pkg: php52

/usr/local/etc/php.ini:
  file.append:
    - text:
      - display_errors = Off
      - error_reporting = E_ALL & ~E_NOTICE
      - date.timezone = "Europe/Berlin"
      - allow_url_include = On
      - allow_url_fopen = On
      - log_errors = On
      - short_tags = On
      - max_execution_time = 180
      - max_input_time = 300
      - memory_limit = 128M
    - require:
      - file: create_phpini
