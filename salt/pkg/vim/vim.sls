vim:
  pkg:
    - installed
  file.managed:
    - name: /root/.vimrc
    - source: salt://pkg/vim/vimrc
    - replace: false
    - require:
      - pkg: vim

