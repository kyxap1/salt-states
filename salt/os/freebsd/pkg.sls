pkg:
  pkg:
    - installed

/etc/make.conf:
  file.append:
    - text:
      - BATCH=yes
      - WITH_PKGNG=yes
      - WITHOUT_X11=yes
      - WITHOUT_GUI=yes
      - NO_INET6=yes
      - WITHOUT_INET6=yes
      - WITHOUT_INET6_SUPPORT=yes
      - WITHOUT_IPV6=yes

#pkgng_clients:
#  pkgng:
#    - update_packaging_site
#    - name: "ftp://mirrors.isc.org/pub/pcbsd"
#    required:
#      - pkgng
