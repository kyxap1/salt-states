{% if grains['os'] == 'Debian' %}
mod_auth_mysql: libapache2-mod-auth-mysql
{% elif grains['os'] == 'FreeBSD' %}
mod_auth_mysql: ap22-mod_auth_mysql_another
{% endif %}
