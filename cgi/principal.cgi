#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Pagina principal Tema 4</title>'
echo '</head>'
echo '<body>'

echo '<h1>  Monotorizar: </h1>'
echo '<form method=GET action="/cgi-enabled/mono.cgi">'
echo '<br><input type="submit" value="Ir monotorización">'
echo '</form>'
echo "******************************************************"
echo '<h1>  Terminal virtual: </h1>'
echo '<form method=GET action="/cgi-enabled/terminal.cgi">'
echo '<br><input type="submit" value="Ir a la terminal">'
echo '</form>'
echo "******************************************************"
echo '<h1>  Procesos: </h1>'
echo '<form method=GET action="/cgi-enabled/pro.cgi">'
echo '<br><input type="submit" value="Ir a procesos">'
echo '</form>'
echo "******************************************************"
echo '<h1>  Apagar </h1>'
echo '<form method=GET action="/cgi-enabled/off.cgi">'
echo '<br><input type="submit" value="Ir a procesos">'
echo '</form>'
echo "******************************************************"
echo '<h1>  Reiniciar </h1>'
echo '<form method=GET action="/cgi-enabled/reboot.cgi">'
echo '<br><input type="submit" value="Ir a procesos">'
echo '</form>'
echo "******************************************************"
echo '<h1>  Matar proceso: </h1>'
echo '<form method=GET action="/cgi-enabled/kill.cgi">'
echo '<br><input type="submit" value="Ir matar proceso">'
echo '</form>'
echo "******************************************************"
echo '<h1>  Pausar proceso: </h1>'
echo '<form method=GET action="/cgi-enabled/sleep.cgi">'
echo '<br><input type="submit" value="Ir a pausar proceso">'
echo '</form>'

echo '</body>'
echo '</html>'

exit 0
