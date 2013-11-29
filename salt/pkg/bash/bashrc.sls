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
      - export HISTTIMEFORMAT="%Y %h %d %H:%M:%S "
      - export HISTFILESIZE="100000"
      - alias grep='grep --color=auto'
      {% if grains['os_family'] == 'FreeBSD' %}
      - export PAGER=less
      - export EDITOR=vim
      - alias ls='ls -G'
      - export=== LSCOLORS=ExGxFxdxCxDxDxhbadExEx
      {% else %}
      - alias ls='ls --color=auto'
      - if ! shopt -oq posix; then if [ -f /usr/share/bash-completion/bash_completion ]; then source /usr/share/bash-completion/bash_completion; elif [ -f /etc/bash_completion ]; then source /etc/bash_completion; fi; fi
      {% endif %}
    - require:
      - file: create_bashrc
