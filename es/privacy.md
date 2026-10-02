---
layout: legal
lang: es
locale: es_ES
ref: privacy
permalink: /es/privacy/
title: Política de privacidad
description: >-
  Cómo trata PrizmX sus datos: sin cuentas, sin publicidad y sin seguimiento.
  PrizmX Community envía datos de uso anónimos que usted puede desactivar.
last_updated: 2026-10-02
---

PrizmX es un cliente proxy para las plataformas de Apple, desarrollado como proyecto de código abierto. Esta política explica qué información tratan las apps de PrizmX y este sitio web, y a dónde se envía.

**En resumen:** PrizmX no tiene cuentas, publicidad ni seguimiento. PrizmX Community envía datos de uso anónimos, como los inicios y las versiones de la app, para ayudarnos a entender cómo se utiliza. Puede desactivarlo en los ajustes. Sus perfiles, ajustes y estadísticas permanecen en su dispositivo.

## A qué se aplica esta política

Esta política se aplica a:

- **PrizmX Community**, la app para macOS gratuita y de código abierto distribuida a través de GitHub;
- **PrizmX para App Store**, la edición para iOS y macOS distribuida a través del App Store; y
- este sitio web.

En conjunto, denominamos a las dos apps “las Apps”. “PrizmX” y “nosotros” hacen referencia al proyecto PrizmX y a sus desarrolladores.

## Información que recopilamos

Las Apps no requieren una cuenta y no contienen SDK de publicidad. PrizmX para App Store no nos envía ninguna información personal, datos de uso, informes de fallos ni identificadores de dispositivo, y no contiene SDK de terceros de analítica ni de informes de fallos.

### Datos de uso anónimos en PrizmX Community

PrizmX Community utiliza [PostHog](https://posthog.com) para recopilar datos de uso anónimos. Nos permiten saber cuántas personas usan la app, qué versiones de la app y de macOS se utilizan y si una versión causa problemas. Esta función está activada de forma predeterminada. Puede desactivarla en cualquier momento en **Settings → Privacy → Share Anonymous Usage Data**. Mientras esté desactivada, no se envía nada.

Cuando está activada, la app envía un evento cuando se inicia, se instala o se actualiza, una vez al día mientras está en ejecución, cuando se activa o desactiva TUN o el proxy del sistema, y cuando se abre o pasa a segundo plano. Cada evento incluye:

- un identificador aleatorio creado por la app, no vinculado a su nombre, su dirección de correo electrónico ni su ID de Apple;
- la edición, la versión, la compilación y el identificador de paquete de la app;
- si TUN y el proxy del sistema están activados;
- el modelo de su Mac, la versión de macOS, el tamaño de la pantalla, el idioma, la zona horaria y si está conectado a una red Wi-Fi.

Los eventos no incluyen sus perfiles, suscripciones, direcciones de servidores, credenciales ni reglas, ni los dominios o las apps que utiliza, su tráfico o su historial de conexiones. Como cualquier servidor, PostHog recibe su dirección IP con cada solicitud y puede utilizarla para estimar una ubicación aproximada. PostHog almacena los datos en Estados Unidos conforme a la [Política de privacidad de PostHog](https://posthog.com/privacy). Solo los utilizamos para mejorar PrizmX. No los vendemos ni los utilizamos con fines publicitarios.

Puede comprobarlo usted mismo: el código fuente de PrizmX Community y de sus bibliotecas principales es público en [GitHub](https://github.com/PrizmX).

## Información almacenada en su dispositivo

Para funcionar, las Apps conservan localmente los siguientes datos, dentro de su propio almacenamiento en su dispositivo:

- **Perfiles y suscripciones** que usted importe, incluidas direcciones de servidores, credenciales, URL de suscripción, reglas y grupos de políticas;
- **Ajustes**, como el modo de salida y las opciones de proxy del sistema, TUN y Allow LAN;
- **Estadísticas de tráfico**: totales diarios de aproximadamente 35 días y totales mensuales de 24 meses, incluidos los dominios y las apps que más tráfico consumieron;
- **Historial de conexiones** que se muestra en Inspector: una lista limitada de conexiones recientes con la app, el host, la política coincidente, el protocolo, la duración y los recuentos de bytes.

Estos datos nunca salen de su dispositivo, salvo que usted mismo los comparta o haga una copia de seguridad de ellos. Puede eliminarlos borrando los perfiles en la App o eliminando la App junto con sus datos.

En macOS, PrizmX Community lee información local de los procesos para mostrar qué app abrió cada conexión. Esto ocurre únicamente en su Mac.

## Conexiones de red que realizan las Apps

Además de enrutar su tráfico, las Apps se comunican con los siguientes servicios. Ninguno de ellos está operado por nosotros, y cada uno recibe información estándar de la solicitud, como su dirección IP, conforme a su propia política de privacidad.

- **Sus servidores proxy.** El tráfico se envía a los servidores de sus perfiles, gestionados por usted o por los proveedores que usted elija. Dichos operadores pueden ver sus conexiones en función de cómo funcione su servicio. PrizmX no proporciona servidores proxy ni suscripciones.
- **Actualizaciones de suscripciones.** Los perfiles se descargan desde las URL de suscripción que usted añada.
- **Pruebas de latencia.** Para medir la latencia de los nodos, las Apps envían pequeñas solicitudes HTTP a través de cada nodo a una URL de prueba (de forma predeterminada, `http://www.gstatic.com/generate_204`, o la URL establecida en su perfil). Para medir la latencia de la ruta, abren conexiones TCP con `1.1.1.1` (Cloudflare) y `223.5.5.5` (Alibaba Cloud DNS) y resuelven `www.apple.com` con el resolvedor DNS de su sistema.
- **Consulta de la IP externa.** PrizmX Community muestra su dirección IP pública actual, así como su ubicación y su red aproximadas. Para ello, envía solicitudes a `api.ipify.org` y a `ipwho.is` cuando usted se conecta, cambia de nodo o abre la vista Home.
- **Datos de uso.** Si los datos de uso anónimos están activados, PrizmX Community los envía a PostHog (`us.i.posthog.com`), tal como se describe más arriba.
- **Bases de datos de reglas.** Si su perfil utiliza reglas `GEOIP` o `GEOSITE`, las Apps descargan las bases de datos `geoip.metadb` y `geosite.dat` desde GitHub (MetaCubeX/meta-rules-dat) o, como alternativa, desde jsDelivr, y las actualizan aproximadamente una vez por semana.

## Permisos

Las Apps solicitan permiso para añadir una configuración de VPN (Packet Tunnel). Esta se utiliza únicamente para enrutar el tráfico de su dispositivo según sus reglas, en su dispositivo. En macOS, PrizmX Community también puede modificar los ajustes de proxy del sistema mientras el proxy del sistema está activado.

Si activa **Allow LAN**, otros dispositivos de su red local pueden usar su puerto proxy. Actívelo únicamente en redes en las que confíe.

## Descifrado HTTPS

PrizmX Community no descifra ni modifica su tráfico. Si PrizmX para App Store ofrece captura, descifrado o reescritura HTTP, estas funciones estarán desactivadas de forma predeterminada, requerirán que usted mismo instale un certificado y confíe en él, y procesarán el contenido descifrado únicamente en su dispositivo.

## Compras y Apple

Las compras realizadas en PrizmX para App Store las procesa Apple. No recibimos sus datos de pago, su nombre ni su ID de Apple. Apple nos facilita informes de ventas que no permiten identificarle.

Si ha decidido compartir datos de análisis con los desarrolladores de apps en los ajustes de su dispositivo, Apple puede facilitarnos informes de fallos y estadísticas de uso agregadas de PrizmX para App Store. Solo los utilizamos para solucionar problemas. El tratamiento que Apple hace de estos datos se describe en la [Política de privacidad de Apple](https://www.apple.com/legal/privacy/).

## Este sitio web

Este sitio web está alojado en GitHub Pages. No utiliza cookies, analítica ni seguimiento, y no carga scripts ni fuentes de terceros. GitHub puede registrar las direcciones IP de los visitantes con fines de seguridad y operativos, tal como se describe en la [Declaración de privacidad de GitHub](https://docs.github.com/site-policy/privacy-policies/github-general-privacy-statement). Las descargas de PrizmX Community las sirve GitHub Releases conforme a la misma declaración.

## Si se pone en contacto con nosotros

Si nos envía un correo electrónico, recibimos su dirección de correo electrónico y su mensaje. Solo los utilizamos para responderle, los conservamos únicamente durante el tiempo necesario para ello y no los compartimos.

## Sus opciones y derechos

Las Apps no nos envían datos personales, por lo que usted controla sus datos directamente: puede consultarlos o eliminarlos en la App, o eliminar la App junto con sus datos. En PrizmX Community, puede desactivar los datos de uso anónimos en cualquier momento en los ajustes. No vendemos ni compartimos información personal. En relación con cualquier mensaje que nos haya enviado, puede solicitarnos el acceso a dicho mensaje o su eliminación a través de la dirección de contacto que figura más abajo. Según dónde resida, también puede tener derecho a presentar una reclamación ante una autoridad de protección de datos.

## Niños

Las Apps no están dirigidas a niños menores de 13 años, y no recopilamos a sabiendas información personal de niños.

## Cambios en esta política

Cuando las Apps o esta política cambien, actualizaremos esta página y la fecha de “Última actualización” que figura arriba. Los cambios significativos también se indicarán en las notas de la versión.

## Contacto

Preguntas sobre esta política: {% include legal-contact.html %}
