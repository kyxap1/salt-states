sendmail:
  pkg:
    - installed
  service.running:
    - enable: True
    - reload: True
