ntp:
    {% if grains['kernel'] == 'Linux' %}
    pkg:
      - installed
    {% endif %}
    service.running:
    {% if
      grains['os_family'] == 'FreeBSD' or
      grains['os_family'] == 'RedHat'
    %}
    - name: ntpd
    {% endif %}
    - enable: True
    - reload: True
