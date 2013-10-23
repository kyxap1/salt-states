ntp:
    {% if grains['kernel'] == 'Linux' %}
    pkg:
      - installed
    {% endif %}
  service.running:
    {% if
      grains['os'] == 'FreeBSD' or
      grains['os'] == 'RedHat' or
      grains['os'] == 'CentOS' or
      grains['os'] == 'Fedora'
    %}
    - name: ntpd
    {% endif %}
    - enable: True
    - reload: True
