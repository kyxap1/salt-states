{% if grains['os_family'] == 'Debian' %}
include:
  - pkg.debconf-utils
  - pkg.alien
{% endif %}

