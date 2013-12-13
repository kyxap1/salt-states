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
      - alias wget='wget -c --content-disposition'
      {% if grains['os_family'] == 'FreeBSD' %}
      - export PAGER='less -R'
      - export EDITOR=vim
      - # FreeBSD settings
      - if [ `echo $0` == "-bash" ]; then
      -   [[ -x `which gdircolors` ]] && eval "$(gdircolors -b)" || export LSCOLORS=ExGxFxdxCxDxDxhbadExEx
      -   [[ -x `which gls` ]] && alias ls='gls --color=auto' || alias ls='ls -G'
      -   [[ -x `which gsed` ]] && alias sed='gsed'
      - fi
      {% else %}
      - alias ls='ls --color=auto'
      - if ! shopt -oq posix; then if [ -f /usr/share/bash-completion/bash_completion ]; then source /usr/share/bash-completion/bash_completion; elif [ -f /etc/bash_completion ]; then source /etc/bash_completion; fi; fi
      {% endif %}
    - require:
      - file: create_bashrc
