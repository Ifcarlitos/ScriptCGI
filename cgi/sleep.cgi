#!/bin/bash

echo "Content-type: text/html"
echo ""

echo '<html>'
echo '<head>'
echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<title>Pagina principal Tema 4</title>'
echo '</head>'

echo '<body>'
echo '<h3>  Matar proceso: </h3>'
echo "<form method=GET action=\"${SCRIPT}\">"\
       '<table nowrap>'\
          '<tr><td>Proceso a matar:</TD><TD><input type="text" name="cmd" size=12></>'
          '</tr></table>'
echo '<br><input type="submit" value="sleep">'\

     XX=`echo "$QUERY_STRING" | sed -n 's/^.*cmd=\([^&]*\).*$/\1/p'| sed "s/%20/ /g"`
     dato="${XX//+/ }"
     sleeo $dato

echo '</body>'
echo '</html>'

exit 0
