# Prueba en Pegasus / TVBox

Validar la adaptación con los mismos recursos y ajustes que Amberline y registrar refinamientos necesarios.

## Apariencia

1. Conservar Amberline e instalar RetroCow en una carpeta independiente.
2. Elegir **RetroCow** en Ajustes. Sin preferencias del fork, comprobar fondo violeta, acento rosa y foco cian.
3. Revisar vaca y nombre en splash, botón superior y lanzamiento; no debe haber un rectángulo negro alrededor.
4. Probar 16:9 y 4:3 si el equipo permite ambas resoluciones. Revisar splash, colecciones, selector completo, grilla y detalles.
5. Comprobar textos, foco y favoritos desde la distancia habitual de TV.

## Controles y persistencia

1. Abrir el selector haciendo clic en **RetroCow**, o desde la primera colección pulsando el control de colección anterior. Revisar vista previa y selección de las 15 paletas.
2. Elegir otra paleta, cerrar y reiniciar Pegasus. Confirmar que se recuerda. La primera recupera RetroCow.
3. Probar colecciones largas, desplazamiento sostenido, búsqueda, favoritos y navegación por primera letra.
4. Abrir RetroAchievements con las credenciales disponibles y revisar la confirmación de cierre de sesión. No compartir credenciales en registros.
5. Lanzar un juego y regresar. Comprobar foco, colección y juego restaurados.
6. Probar joystick: navegación, selección, volver, búsqueda y logros. Se conservan los controles originales; el hardware se valida aquí.

## Red y actualizaciones

- Arrancar con y sin Internet; el splash no debe esperar la consulta de releases.
- Antes de publicar una release del fork, el 404 de `releases/latest` es esperado y no debe haber aviso.
- Para probar el aviso en el futuro, usar una release estable del fork con tag numérico mayor que `0.1.0`. No publicar ni modificar releases de Amberline.

## Rendimiento

1. Misma versión de Pegasus, resolución, biblioteca, medios y almacenamiento para ambos temas.
2. Alternar Amberline → RetroCow → Amberline. Hacer al menos tres arranques por tema, separando el primero de los posteriores con caché caliente.
3. Medir tiempo hasta responder, fluidez en colección grande y videos. Los 700 ms mínimos del splash se conservan.
4. Registrar FPS/memoria con las herramientas del dispositivo. Sin medición, indicar percepción sin atribuir cifras.
5. Ante problemas, registrar resolución, versión de Pegasus, modelo/SoC/RAM, pasos y extracto de `lastrun.log` sin credenciales.

El rendimiento equivalente solo se confirma con mediciones en el dispositivo real.

## Volver

Seleccionar Amberline y reiniciar Pegasus. Instalar RetroCow en otra carpeta conserva intactos sus archivos. La vaca original está en `assets/branding/retrocow-source.png`.
