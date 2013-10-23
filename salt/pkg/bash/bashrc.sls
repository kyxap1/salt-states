create_bashrc:
  file.managed:
    - name: /root/.bashrc
    - replace: false
    - require:
      - pkg: bash

/root/.bashrc:
  file.append:
    - text:
      - stty -ctlecho
      - export HISTCONTROL="ignoreboth"
      - export HISTTIMEFORMAT='%Y %h %d %H:%M:%S'
      - export HISTFILESIZE="100000"
      - alias grep='grep --color=auto'
      {% if grains['os'] == 'FreeBSD' %}
      - export PAGER=less
      - export EDITOR=vim
      - alias ls='ls -G'
      {% else %}
      - alias ls='ls --color=auto'
      {% endif %}
    - require:
      - file: create_bashrc
