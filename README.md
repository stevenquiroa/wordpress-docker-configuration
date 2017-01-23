#Wordpress Docker Image Configuration

Crea el ambiente de configuracion para poder un server con linux, nginx, mysql y php, dedicado a wordpress.

Si se quiere utilizar composer.phar por favor entrar al container de php y ejecutarlo desde ahí

Tiene la configuracion para inicializar tres maquninas de docker:
1. wordpress: con wordpres:latest
2. db: con mysql:5.7

Pasos si es la primera vez:
1. docker-compose up -d

Si corre en linux por favor correr:
init_linux.sh despues de inicializar

Nota: Colocar las credenciales correctas a la base de datos (Según está en el docker-compose.yml)
Nota: Colocar los puertos disponibles (wordpress:8000 y db:33060 por default)
Nota: Si surgen problemas de permisos por favor correr este comando: sudo chown :www-data -R wp-content
