include:
  - pkg.lsof
  {% if grains['kernel'] == 'Linux' %}
  - pkg.htop
  - pkg.atop
  - pkg.iotop
  - pkg.sysstat
  {% elif grains['kernel'] == 'FreeBSD' %}
  - pkg.portmaster
  - pkg.cvsup-without-gui
  - pkg.gmake
  - pkg.gtar
  - pkg.coreutils
  - pkg.gsed
  {% endif %}

