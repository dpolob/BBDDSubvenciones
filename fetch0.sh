#!/bin/bash
ND=$(date +"%s")
echo Descargando $1
curl --insecure --silent --output page_$(printf %03d $1).json \
'https://www.infosubvenciones.es/bdnstrans/busqueda?type=concs&_search=false&nd='$ND'&rows='$ROWS'&page=1&sidx=8&sord=asc' \
-H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0' \
-H 'Accept: application/json, text/javascript, */*; q=0.01' \
-H 'Accept-Language: es-ES,en-US;q=0.7,en;q=0.3' \
-H 'Accept-Encoding: gzip, deflate, br' \
-H 'Referer: https://www.infosubvenciones.es/bdnstrans/GE/es/concesiones' \
-H 'X-Requested-With: XMLHttpRequest' \
-H 'Connection: keep-alive' \
-H 'Cookie: JSESSIONID=7rHeYTFxj0Cw4J3lbS2QfjiPoS14eVRNKbhNiUVQMnYku_vtHCbD!495837685!93475582; TS014c174a=01b3ae6da8a8150d0ce6ada2f8cbcc3911cc67566148c04b278808c0b683f12a5fe5528b16398ebcf74e56ceb867569e31576503b4; TS01bc68c4=01b3ae6da85349c04c0cb29eb1fc7ef58470214cbfd50465d5d5086f1d5ddba1bd17a32f53848949686b7790b6b03419f8c70b326f; TSeafa35b3027=0841270cedab200030ae082db2c477bdf813fe93b8cfb5b3e8dce8d641d31008859b16cf8154104c08977801bb1130001556b4196eaa4efc9c8613931e86130e7ded014aed2a94a72e2d8b4d198d16b8fe6a1276e5613cc7893f4f4c9c163206' \
-H 'Sec-Fetch-Dest: empty' \
-H 'Sec-Fetch-Mode: cors' \
-H 'Sec-Fetch-Site: same-origin' \
-H 'Sec-GPC: 1'
