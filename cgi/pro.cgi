#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Pagina principal Tema 4</title>'
echo '</head>'

echo '<body>'
echo "<h2> Procesos: </h2>"
echo '<h3> Procesos: '
echo    `ps aux | wc -l`
echo '</h3>'
echo '<br>'
echo "****************************************"
echo '<br>'
	 ps

echo '</body>'
echo '</html>'

exit 0
