subversion:
  pkg:
    - installed
    {% if grains['os'] == 'FreeBSD' %}
    - name: subversion-static
    {% endif %}
