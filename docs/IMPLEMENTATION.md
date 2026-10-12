# Implementación RetroCow 0.1.0

## Base y límites

Base: `Test`, commit `ef3d7404b1ba56a1319e0fc544e51e96d8bf151c`, Amberline 1.0.4. Se revisaron los QML, `qmldir`, recursos y documentación de esa base. Su único documento general era README.md, conservado íntegro en AMBERLINE_UPSTREAM.md.

`Brand.qml` centraliza nombre, versión, imagen, URLs y claves de preferencias propias. Se registra como singleton en `qmldir`. `theme.cfg` usa la misma identidad y conserva al autor original.

No se cambia el splash del ejecutable de Pegasus ni los comandos de emuladores, ROMs, metadatos de biblioteca o configuración de Android.

## Paleta

| Función | Color |
| --- | --- |
| Fondo | `#0a0026` |
| Panel | `#1b1038` |
| Panel alternativo | `#291747` |
| Borde / violeta | `#553ea8` |
| Acento / rosa | `#ff71ce` |
| Acento atenuado | `#a83c86` |
| Foco / cian | `#7df9ff` |
| Texto principal | `#f5efff` |
| Texto secundario | `#c1b3dc` |
| Favoritos | `#7df9ff` |

Se agrega al principio del selector; se conservan las 14 paletas originales. Se guarda bajo `retrocow.selectedTheme`. Una elección inválida pasa al valor por defecto y se persiste el nombre efectivamente aplicado.

## Mascota y navegación

`RetroCowLogo.qml` carga un PNG transparente local, asíncrono y con caché. Su tamaño de decodificación fijo está limitado a 256 × 256, sin suavizado ni mipmaps. Las instancias comparten URL y parámetros; no hay una instancia por juego. El PNG de ejecución se redujo a 256 × 229 por vecino más próximo; la imagen original suministrada se conserva separada.

La mascota aparece en splash, botón de paletas y pie de lanzamiento. No tiene animaciones, efectos o capas adicionales. El botón conserva el flujo de apertura/cierre y foco. Su nombre usa la fuente pixelify existente. El ancho adicional solo afecta al espacio de la lista horizontal de colecciones, sin cambiar dimensiones de la grilla.

Prompt de la variante gráfica: conservar vaca frontal, silueta, cuernos, ojos y bloques pixelados; cambiar manchas a violeta, hocico a rosa y cuernos a cian, con cara casi blanca; retirar solo el fondo exterior a transparencia real; sin texto, objetos añadidos ni efectos. Se usó la herramienta integrada de imágenes y se redujo el recurso para ejecución.

## Actualizaciones

El fork comienza en `0.1.0`, con numeración independiente de `1.0.4`. Consulta `https://api.github.com/repos/Varghh/RetroCow-Amberline-/releases/latest` y guarda avisos bajo `retrocow.lastUpdateNotified`. Sigue siendo asíncrona y no participa en la condición de fin del splash. No descarga ni instala actualizaciones.

Sin releases, GitHub responde 404: no hay aviso y se conserva el funcionamiento offline. `releases/latest` devuelve una release estable, no una rama ni una prerelease. Publicar en el futuro tags numéricos estables `v0.1.1`, `v0.2.0`, etc.; se mantiene el comparador numérico original.

## Componentes conservados

- `GameGrid.qml`: grilla, orientación, navegación por letras y `cacheBuffer: cellHeight * 4`.
- `GameCard.qml`: carátulas y shaders.
- `GameSearch.qml`: Loader y `cacheBuffer`.
- `CollectionBar.qml`, `AspectProbe.qml`, `GameDetails.qml`, `ScrollProgressBar.qml`: lógica original.
- `SoundsEffects.qml`, fuentes, credenciales y llamadas a RetroAchievements: originales. En `RAGameInfoSection.qml` solo cambia el nombre de la confirmación de cierre de sesión.
- Temporizadores, animaciones, condiciones del splash y tiempos de lanzamiento: originales.

## Fuentes revisadas

- [Amberline y README original](https://github.com/ZagonAb/Amberline).
- [Pegasus: estructura, theme.cfg y recarga](https://pegasus-frontend.org/docs/themes/overview/).
- [Pegasus: API y memoria por tema](https://pegasus-frontend.org/docs/themes/api/).
- [Pegasus: instalación de temas](https://pegasus-frontend.org/docs/user-guide/installing-themes/).
- [Pegasus: directorios de configuración](https://pegasus-frontend.org/docs/user-guide/config-dirs/).
- [Qt: sourceSize, memoria y filtrado](https://wiki.qt.io/Performance_tip_Images).

Las fuentes fundamentan la estructura y decisiones; no aportan un benchmark de RetroCow en la TVBox del proyecto.
