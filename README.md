# sisoper
Repositorio creado para el curso de Sistemas Operativos.

Para el primero proyecto corto del curso, tendremos la posibilidad de monitorear un ambiente de cómputo Raspberry Pi a tiempo real para ver el estado de alguno de sus componentes como:
CPU,
Memoria,
Disponibilidad de Disco,
Ancho de banda,
Temperatura

Dadas estas tareas, se han creado dos scripts. Uno en Python para realizar el envío de datos a nuestra plataforma web thingspeak, y uno en Bash que obtendrá los datos de nuestra Raspberry Pi y se los pasará a dicho script del web services. Para la utilización de este script se necesita:

Raspberry Pi con el sistema operativo Raspbian Jessie.

Instalado el speedtest-cli en nuestra Raspberry Pi.

Si es la primera vez en un equipo Raspberry Pi, se deberá configurar el programador de tareas ("crontab -e") y agregar la línea para que se realice la ejecución de nuestro script cada 15 minutos. En el documento del proyecto se encuentra la línea de configuración que se debe agregar a nuestro programador.

Conexión a internet.
