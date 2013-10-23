{% if grains['os'] == 'RedHat' %}
apache: httpd
{% elif grains['os'] == 'Debian' %}
apache: apache2
config_dir: debian
{% elif grains['os'] == 'FreeBSD' %}
apache: apache22
config_dir: freebsd
{% endif %}
