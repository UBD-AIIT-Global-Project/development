apt-get -y install postfix mailutilscp main.cf /etc/postfix/main.cfcp sasl_passwd /etc/postfix/sasl_passwdcp rc.local /etc/postfix/rc.localpostmap hash:/etc/postfix/sasl_passwdecho "root: global-iot-all@googlegroups.com" >> /etc/aliasesnewaliases/etc/init.d/postfix restart/etc/rc.local