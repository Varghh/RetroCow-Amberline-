# Validación de la primera versión

## Comprobaciones realizadas

- **Sintaxis:** todos los QML pasaron `qmllint` de Qt 5.
- **Componentes:** `Brand`, `Style`, `RetroCowLogo`, `ColorSetting`, `LaunchOverlay`, `UpdateNotification` y `RAGameInfoSection` compilaron con el motor QML de Qt 5.15.19.
- **Preferencias:** comprobados inicio en RetroCow, aislamiento de la antigua clave de color `coffee`, 15 paletas, guardado de la selección, vista previa sin guardado y valor por defecto ante un nombre inválido. El selector comienza en la paleta RetroCow.
- **Integración:** cargado el tema completo en Pegasus `alpha16-82-gc3462e68` para Linux, con Qt 5.15.12, un servidor X virtual y renderizado por software. Se usó una biblioteca ficticia de tres entradas.
- **Diseño:** revisados splash, botón de identidad, colecciones y selector en 1280 × 720 (16:9) y 800 × 600 (4:3), confirmando las dimensiones de la ventana en los registros de Qt. El selector muestra las 15 opciones en ambas resoluciones.
- **Navegación:** cambio de colección por teclado, apertura del selector desde el botón, cierre con selección y recuperación del foco. Se ejercitó el lanzamiento a `/bin/true`, cuyo cierre limpio consta en el registro; esto no valida un emulador.
- **Estado:** al siguiente arranque se restauraron la colección y el título guardados en la prueba anterior.
- **Sin red:** la consulta de releases falló por falta de conectividad del proceso y no bloqueó el fin del splash ni la navegación.
- **Alcance:** doce componentes centrales comparados byte por byte con `Test`, sin diferencias: GameGrid, GameCard, GameSearch, CollectionBar, AspectProbe, GameDetails, ScrollProgressBar, SoundsEffects, Fonts, RACredentialsPopup, FocusableItem e IconImage. El README original se conserva íntegro.
- **Recursos:** PNG válido y transparente de 256 × 229, 48 059 bytes; imagen suministrada conservada sin cambios. Versiones de Brand y theme.cfg coincidentes, enlaces locales resueltos y `git diff --check` aprobado.

## Límites y observaciones

El entorno no tiene la GPU, joystick, audio, videos ni emuladores de la TVBox. El renderizado por software no reproduce los efectos de QtGraphicalEffects/ShaderEffect del dispositivo. La comprobación de lanzamiento no confirma el retorno desde un emulador real. No se midieron FPS, RAM ni equivalencia de rendimiento.

En los registros aparece una advertencia de `GameGrid.qml` al evaluar `currentGame.title` mientras la selección todavía es nula. Esa expresión está en el código original, que se conserva sin cambios; no impidió cargar ni navegar en la prueba. También hubo advertencias de audio por ausencia de un servidor PulseAudio. No se afirma que el registro del entorno esté libre de advertencias.

Para confirmar rendimiento y compatibilidad reales, seguir [TESTING.md](TESTING.md) en la TVBox con la misma biblioteca y configuración usadas con Amberline.
