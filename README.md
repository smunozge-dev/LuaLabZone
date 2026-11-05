# LuaLabZone

Es simplemente un repositorio para poder estudiar o repasar todo lo que nos ofrece el lenguaje de programación Lua. Cada sesión, esta hecha para ejecutar con Docker, por ello, cada modulo tiene un Dockerfile asociado para llegar y levantar imagenes para luego ejecutar un contenedor con dicho contenido.

## INSTRUCCIONES DE EJECUCIÓN

### PREREQUISITOS:

#### CASO DE QUERER TRABAJAR CON LUA DIRECTAMENTE:
- En caso de querer prescindir de Docker (Herramienta que recomiendo encarecidamente por su utilidad), no hay problema, solo basta con instalar Lua y ejecutar en la terminal dependiendo de la herramienta instalada:

(EJEMPLO CON BASH LINUX, en este caso ArchLinux)
[user@computer]$ lua5.3 nombre_archivo

Importante a considerar que debe de ubicarse en la terminal en el mismo directorio que se encuentra el archivo correspondiente, por ejemplo en el caso hipotetico que quiera ejecutar el primer archivo 01-holamundo, debe de en la terminal, dirigirse al modulo, seguido ejecutar el siguiente comando:

[user@computer]$ lua5.3 01-holamundo

#### CASO DE QUERER TRABAJAR CON DOCKER:

Como bien mencione que recomiendo docker por su utilidad, una de ellas, es que permite programar distintos lenguajes sin tener que instalarlo en el sistema local, asi se promueve un ambiente local limpio de dependencias huerfanas y trabar con versionados en contenedores aislados.

- Para ejecutar un contenedor, primero debemos de crear la imagen correspondiente, para ello, cada modulo o sesión cuenta con su propio dockerfile para ir creando esas imagenes para luego ejecutarlas en contenedores, para ello:

  1.- Primero debemos de ir a la terminal y dirigirnos al modulo correspodiente que queremos llegar:
  (Cambiar sintaxis de acuerdo a la ruta que corresponda en su dispositivo)
  [user@computer]$ cd ~/ruta/directorioRepostitorio/modulo_correspondiente

  2.- Levantar imagen correspondiente una vez llegas al directorio:
  [user@computer]$ docker build -t nombre_imagen_quequieras .
  Esto levantara una imagen con la tag que tu le asignaste.

  3.- Luego recomiendo ejecutar el script de una forma límpia, con el objetivo que apenas ejecute el script, los contenedores no se acumulen y al terminar estos se borren dejando limpio el sistema:
  (antes recomiendo un "docker image ls" en la terminal, para identificar la imagen que quiero utilizar para correr en mi contenedor)
  [user@computer]$ docker run --rm nombre_imagen 



