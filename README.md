# dns-spoof

## Version 1.0

dns-spoof es un script creado en bash de linux el cual permite automatizar la ejecucion de un ataque dnsspoof redireccionando a la victima de tu red a una pagina falsa (index.html) que configuremos en la ruta /var/www/html/ este ataque funciona sin problema para paginas HTTP para las paginas HTTPS NO HACE EL REDIRECCIONAMIENTO DNS ya que esta en su version 1.0.

para la ejecucion correcta del script se debe tener en cuenta tener en su sistema operativo de preferencia instalado:

Ettercap
Apache2
ArpSpoof
Dnsspoof

una vz lo anterior se encuentre instalado el script ejecutara automaticamente los comandos necesarios para montar el ataque por lo cual no es necesario configuraciones adicionales mas de las que pide el mismo script ya que solo seria para la configuracion del mismo ataque como la ip de la victima el router y la interface por donde se montara el ataque.

![dns spoof](https://user-images.githubusercontent.com/67207446/87171549-6d223f80-c298-11ea-889d-7d87c28816e7.PNG)

## Instalacion

git clone https://github.com/Anonimo501/dns-spoof.git

cd dns-spoof

chmod +x dns_spoof.sh

./dns_spoof.sh
