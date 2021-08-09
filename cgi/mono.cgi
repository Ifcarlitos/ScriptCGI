#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Pagina principal Tema 4</title>'
echo '</head>'

echo '<body>'
echo '<h1> Estas en el host '
	hostname
echo -n "y es "
	date
echo "</h1>"

echo "<h2> Información general: </h2>"
echo '<h3> Kernel: '
	uname -r
echo '</h3>'

echo "<h2> Hardware: </h2>"
echo '<h3> Procesador: '
echo        `cat /proc/cpuinfo | grep "model name" | uniq | cut -f2 -d":"`
echo '</h3>'
echo '<h3> Nucleos: '
echo	`cat /proc/cpuinfo | grep processor | wc -l`
echo '</h3>'

echo "<h2> RAM: </h2>"
echo '<h3> Memoria total: '
echo	`free -m | grep Mem | awk '{print $(2)}'` Mb.
echo '</h3>'
echo '<h3> Memoria usada: '
echo    `free -m | grep Mem | awk '{print $(3)}'` Mb.
echo '</h3>'
echo '<h3> Memoria libre: '
echo	`free -m | grep Mem | awk '{print $(4)}'` Mb.	
echo '</h3>'

echo "Los usuarios conectadoa ahora mismo son:"
echo "<BLOCKQUOTE><PRE>"
	who
echo "</PRE><BLOCKQUOTE>"

echo "<h2> Usuarios: </h2>"
echo '<h3> Uptime: '
echo    `uptime | cut -f4 -d" "` días
echo '</h3>'
echo '<h3> Usuarios Conectados: '
echo    `w | wc -l`
echo '</h3>'

echo "<h2> Procesos: </h2>"
echo '<h3> Procesos: '
echo    `ps aux | wc -l`
echo '</h3>'
echo '<h3> Carga de procesador: '
echo	`uptime | awk '{print $(NF - 2), $(NF - 1), $NF}'`
echo '</h3>'

echo "<h2> Disco:  </h2>"
echo '<h3> Uso del disco: '
         df -h
echo '</h3>'

echo '</body>'
echo '</html>'

exit 0
