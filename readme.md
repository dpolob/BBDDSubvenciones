Descargando la Base de Datos Nacional de Subvenciones | Jaime Gómez-Obregón

A continuación voy a explicar cómo descargar la Base de Datos Nacional de Subvenciones (BDNS) desde su portal oficial del Ministerio de Hacienda: [www.infosubvenciones.es](http://www.infosubvenciones.es). ✅ El portal ofrece un buscador limitado ⛔ Pero no permite descargar los datos ¡Vamos allá! 💪 🧵…

![](https://api.typefully.com/media-p/820d2781-c430-48d8-8560-7813ed9eefcd/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

El portal oficial tiene notables limitaciones. Entre ellas destacan dos: los límites a la descarga de datos y el tiempo de respuesta del portal. 1️⃣ La funcionalidad de descarga que ofrece el Ministerio simplemente no funciona si tu búsqueda comprende más de 10.000 resultados.

![](https://api.typefully.com/media-p/a0b8150e-6394-48e0-9b7d-9914f3d31891/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

El Ministerio podría haber paliado parcialmente esta limitación permitiendo la exportación de los primeros 10.000 resultados de las búsquedas que arrojen más. En vez de esto, ponen al ciudadano en un callejón sin salida: si hay muchos resultados, no puedes exportar ninguno. 🤷

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

2️⃣ La segunda limitación más prominente del portal oficial es su penosa velocidad de respuesta. Una búsqueda de beneficiarios puede tardar CASI TRES MINUTOS en completarse. Algo tan común como pasar de página se torna una tarea exasperante.

![](https://api.typefully.com/media-p/f184711a-2550-4438-b117-df838a16071a/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

⚠️ Esto es un torpedo al derecho de la ciudadanía a acceder a los datos para controlar la actuación de los gestores públicos. El mecanismo habilitado para ello es tan lento que en la práctica es inusable. El ciudadano tira la toalla; desiste de ejercer su derecho.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Nótese que la BDNS es un tesoro que comprende una ingente cantidad de información pública: ✅ 10,5 millones de subvenciones ✅ 350.000 convocatorias Sin embargo, el valor de estos datos está cautivo tras un sitio web cutre y lento. ¡Se hace preciso liberar estos datos! 👇

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

El portal oficial ofrece, en esencia, dos tipos de registros: convocatorias y concesiones. 1️⃣ Cursando una búsqueda vacía en la pestaña «Convocatorias» provocamos la carga de la primera página de una consulta que devuelve, paginados, la totalidad de los resultados.

![](https://api.typefully.com/media-p/fb698e52-a2c2-4e99-8fd5-25e3a3775937/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Cada página contiene 50 resultados, lo que hace un total de 7.015 páginas. Pero tal y como decíamos arriba… ❌ Los enlaces de descarga no funcionan ❌ La lentitud del servidor imposibilita iterar por todas las páginas Entonces, ¿cómo podemos descargar estos datos? 🤔

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

La búsqueda provoca una petición XHR al servidor del Hacienda. Podemos copiarla para analizarla y replicarla con cURL en la línea de comandos.

![](https://api.typefully.com/media-p/98f163a2-418d-4069-b219-88e14e593c2e/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

De los siete parámetros que la aplicación envía al «endpoint» de búsqueda, identificamos inmediatamente dos: ✅ «nd», que contiene un «timestamp», esto es; el número de milisegundos transcurridos desde el 1 de enero de 1970. ✅ «rows», que controla el número de filas por página.

![](https://api.typefully.com/media-p/49df081d-cd1a-4981-bfdc-a1d1b44cc6ce/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

⚠️ Nótese que los términos que definen la búsqueda, y que hemos dejado en blanco, no viajan en la petición del usuario, sino que son mantenidos en el servidor a través de una variable de sesión que el servidor rescata a partir de una «cookie» que instala en el navegador.

![](https://api.typefully.com/media-p/fc13eec7-60e4-4e13-b1ae-a9f39fc16e72/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Esta singular implentación es innecesariamente compleja y tiene, entre otras, las siguientes consecuencias negativas: 👎 Dificulta la descarga automatizada de resultados y, por lo tanto, la exploración por la ciudadanía de estos datos desde fuera del portal oficial.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

👎 Impide que los buscadores como Google encuentren las subvenciones y sus beneficiarios. 👎 Provoca la caducidad de las peticiones, que solo funcionarán mientras no expire la variable de sesión en el servidor. 👎 Imposibilita enlazar y compartir los resultados de una búsqueda.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

👎 Supone un sobreconsumo de recursos en el servidor del Ministerio, al obligarlo a gestionar el estado («state») de cada usuario que utilice el portal (!). Esto impacta en el rendimiento del servicio y, a la postre, promueve los exasperantes tiempos de respuesta observados.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

La aplicación web de Hacienda ofrece al ciudadano la posibilidad de obtener los resultados en páginas de 50, 100 o 200 resultados. El desplegable del sitio web simplemente controla el valor del parámetro «rows» que, como hemos visto, se envía en la petición XHR al servidor.

![](https://api.typefully.com/media-p/f6cbcf6c-9ee8-40d2-b347-8b077a1258e2/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Se considera una mala práctica de programación y un riesgo de seguridad no comprobar en el servidor los valores recibidos del usuario, pues estos podrían haber sido manipulados para provocar resultados no contemplados. Que es justo lo que va a suceder en el siguiente tuit. 😉

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Y es que aunque el interfaz de usuario del buscador de Hacienda solo permite solicitar páginas de 50, 100 o 200 resultados, en la práctica nada nos impide solicitar una página con 50.000.000 de ellos. Obtenemos así, y en una única consulta, las 350.000 convocatorias de la BDNS.

![](https://api.typefully.com/media-p/2fc9d650-b2f9-4b4d-968e-915fa7aa5c14/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Bajo la propiedad «rows» del fichero JSON resultante encontramos tantos objetos como convocatorias de subvenciones constan en el portal oficial. Exploramos uno cualquiera:

![](https://api.typefully.com/media-p/f0052a0f-0998-40c3-a14f-8b1b1b74dcfb/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

La conversión del fichero JSON a un equivalente CSV explorable con herramientas como Excel o LibreOffice es trivial:

![](https://api.typefully.com/media-p/60178b15-409c-416f-9aa0-f61696ad7bc5/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

2️⃣ Vamos ahora con la descarga de los beneficiarios de las subvenciones, sin duda la parte más valiosa del conjunto de datos. Es tentador proceder igual que con las concesiones, pero esto no funcionará. ¿Por qué?

![](https://api.typefully.com/media-p/d56c4508-38e1-4a85-8d47-f372af5b53f8/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

El servidor del Ministerio tiene configurado un «timeout» que corta la corta la conexión HTTP antes de que le dé tiempo a recuperar y servir los 10,5 millones de registros. ‼️ He podido comprobar que este «timeout» está configurado con un valor excepcionalmente alto: UNA HORA.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Examinando las cabeceras de las respuestas HTTP deduzco que el contenido parece estar siendo servido con Microsoft IIS. ✅ El «timeout» predeterminado de IIS son 110 segundos. ⚠️ El Ministerio tiene un timeout 33 veces superior. ¿Cuál es la razón? 🔗 [https://docs.microsoft.com/en-us/previous-versions/dotnet/netframework-3.0/e1f13641(v=vs.85)?redirectedfrom=MSDN](https://docs.microsoft.com/en-us/previous-versions/dotnet/netframework-3.0/e1f13641(v=vs.85)?redirectedfrom=MSDN)

![](https://api.typefully.com/media-p/2113022b-b291-43a1-8c6f-deb971036404/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Personalmente, nunca había visto un servidor web (puertos 80 o 443) mantener abierta una petición HTTP durante tanto tiempo. Nótese que incluso la documentación oficial de Microsoft previene de asignar valores demasiado elevados a esta opción de configuración.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Y es que este «timeout» es una medida preventiva, pensada para evitar que un usuario arbitrario de internet pueda drenar recursos del servidor monopolizando durante más tiempo de lo necesario los canales de comunicación.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

El «timeout» es como el airbag del coche, y asignarle un valor tan excepcionalmente alto como una hora equivale, en la práctica, a desconectarlo. Pero, ¿por qué lo han hecho?

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Mi conjetura es que el portal de la BDNS funcionaba bien cuando hace años lo desplegaron y no había aún un número abultado de subvenciones. Pero es un sistema vivo, que cada día recibe nuevas convocatorias y cientos de nuevos beneficiarios…

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

El pobre diseño de la aplicación provoca que el rendimiento se desgrade proporcionalmente con el número de registros de la BDNS. De tal modo que cada día, y durante años, el servicio ha ido funcionando un poquito más despacio que el anterior.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

📅 Esta progresiva degradación del rendimiento eventualmente debió de provocar, un buen día, que el tiempo de respuesta de la base de datos superara el tiempo de «timeout» del servidor. El día que esto sucedió, el portal dejó de funcionar.

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Y en lugar de actuar sobre la causa del problema —la arquitectura de la aplicación—, alguien decidió actuar sobre la consecuencia y simplemente incrementar el «timeout» del servidor a cinco minutos. Luego a media hora. Y finalmente… una hora. 🎉 Hay hasta memes sobre ello. 🤣

![](https://api.typefully.com/media-p/4b6cb45b-0a17-4b4b-8cfe-c34f2238944d/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Esta colección de particularidades nos obliga a emplear una aproximación distinta a nuestro objetivo de descargar los beneficiarios de las subvenciones para auditar su reparto. Vamos a abordarlo con dos «scripts» de Bash. 💪

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

En el primero consignamos un valor de compromiso para el tamaño de las páginas: 50.000 es una buena cifra, pues provoca respuestas que no disparan el «timeout», al tiempo que reduce el número de iteraciones necesarias a poco más de 200, que es un número asumible.

![](https://api.typefully.com/media-p/f584a0d6-9a3e-4e17-aa82-cec1d817aa1a/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Utilizo «xargs» para acelerar el proceso paralelizando las consultas. Decido cursarlas de cinco en cinco para no sobrecargar el servidor. El segundo «script» genera el (absurdo) «timestamp» y consuma la descarga emulando la petición cURL que antes inspeccionamos en el navegador.

![](https://api.typefully.com/media-p/28860fb7-f6f2-497b-8b96-bfe7a4d9df69/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Lanzamos el primer «script», que a su vez invoca sucesivamente el segundo, una vez por cada página, descargando 50.000 beneficiarios cada vez. En lo que tarda el proceso nos bajamos al Scumm Bar y nos pimplamos dos jarras de grog pirata. 🍻😃

![](https://api.typefully.com/media-p/76308ed1-e229-42c5-9b37-ac4195bd1cca/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Acabadas las descargas, es conveniente transformar cada fichero JSON en su equivalente CSV y concatenarlos todos para reunir todas las concesiones de subvenciones en un único fichero de +5 GB.

![](https://api.typefully.com/media-p/83f96ece-46c0-443d-a533-52c2f6776543/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Hasta aquí he detallado cómo descargar la totalidad de los contenidos públicos de la Base de Datos Nacional de Subvenciones con la finalidad de controlar la actuación de los gestores públicos.

![](https://api.typefully.com/media-p/fcd31dd6-43b4-41c3-a440-07dce7ff6375/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Cuando la semana pasada hice esto mismo con el Registro de Licitadores, la respuesta del Ministerio fue «tumbar» el servicio, que a fecha de hoy sigue caído. Es indiferente, porque ya había liberado sus datos: 🔗 [https://docs.google.com/spreadsheets/d/1d\_mDK3XT2d3nzpbin-akhKqO3b7rjxYiHt1U5SSDdlw](https://docs.google.com/spreadsheets/d/1d_mDK3XT2d3nzpbin-akhKqO3b7rjxYiHt1U5SSDdlw) [https://docs.google.com/spreadsheets/d/1d\_mDK3XT2d3nzpbin-akhKqO3b7rjxYiHt1U5SSDdlw](https://docs.google.com/spreadsheets/d/1d_mDK3XT2d3nzpbin-akhKqO3b7rjxYiHt1U5SSDdlw)

![](https://api.typefully.com/media-p/7f861ba2-2f7c-4506-bf3f-20ff88931e41/)

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

El resquicio hoy expuesto nos permite a los ciudadanos descargar todos los datos para explorarlos. Si el Ministerio lo tapa para impedir el acceso y no habilita un mecanismo alternativo eficaz, publicaré un segundo método que también he localizado, y que de momento me reservo. 😙

.css-1m17r52{margin:0;color:var(--c1);font-family:inherit;line-height:1.35;font-size:16px;font-weight:400;letter-spacing:0px;}.css-1m17r52 a{color:var(--accent1);-webkit-text-decoration:none;text-decoration:none;font-weight:inherit;}

Más avanzada la semana publicaré todos los datos en GitHub, así como un Discord para organizarnos. Y un método para disociarlos y anonimizarlos, pues es imperativo proteger a las personas, sus circunstancias y sus datos. ¡Esto es lo que propongo! 👇 [https://twitter.com/JaimeObregon/status/1507697770366484482](https://twitter.com/JaimeObregon/status/1507697770366484482)

.css-morc34{width:100%;height:2.5rem;-webkit-flex:0 0 2.5rem;-ms-flex:0 0 2.5rem;flex:0 0 2.5rem;}
