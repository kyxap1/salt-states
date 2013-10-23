{% if grains['os'] == 'FreeBSD' %}
include:
  - os.freebsd.php52
{% endif %}
