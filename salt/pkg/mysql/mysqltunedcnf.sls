create_mycnf:
  file.managed:
    - name: /usr/local/etc/my.cnf
    - replace: false
    - require:
      - pkg: mysql-server

/usr/local/etc/my.cnf:
  file.append:
    - text:
      - [mysqld]
      - table_cache              = 10140
      - table_definition_cache   = 10140
      - open_files_limit         = 20480
      - tmp_table_size           = 120M
      - max_heap_table_size      = 120M
      - key_buffer_size          = 1024M
      - wait_timeout             = 120
      - interactive_timeout      = 45
      - thread_concurrency       = 16
      - innodb_buffer_pool_size  = 64M
      - default_storage_engine   = innodb
      - query_cache_limit        = 2M
      - query_cache_size         = 2048M
      - innodb_file_per_table
      - skip-name-resolve
      - thread_cache_size        = 128
      - query_cache_min_res_unit = 1024
      - max_connect_errors       = 100
      - [mysqldump]
      - quick
      - quote-names
      - max_allowed_packet       = 128M
      - [mysql]
      - #no-auto-rehash # faster start of mysql but no tab completition
      - [isamchk]
      - key_buffer               = 128M
    - require:
      - file: create_mycnf

