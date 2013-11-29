include:
  - pkg.bash
  - pkg.vim
  - pkg.wget
  - pkg.less
{% if grains['os_family'] == 'Debian' %}
  - pkg.locales
{% endif %}
