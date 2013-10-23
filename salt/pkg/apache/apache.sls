apache:
  pkg:
    - installed
    - name: {{ pillar['apache'] }}
  service:
    - name: {{ pillar['apache'] }}
    - running
    - enable: true
    - require:
      - pkg: {{ pillar['apache'] }}
