base:
  '*':
    - default

  'kernel:FreeBSD':
    - match: grain
    - os.freebsd

  'kernel:Linux':
    - match: grain
    - os.linux

  '*.serious':
    - clients.serious

  'serious-uszilla5.serious':
    - roles.webserver
