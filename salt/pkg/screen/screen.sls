screen:
  pkg:
    - installed
  file.managed:
    - name: /root/.screenrc
    - source: salt://pkg/screen/screenrc
    - replace: false
    - require:
      - pkg: screen

