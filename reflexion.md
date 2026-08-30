# Actividad de Git y GitHub

## PREGUNTA 1: Importancia de `git status`

**Explica con tus palabras por qué es importante hacer `git status` ANTES de hacer un `add` y DESPUÉS de un `add`. ¿Qué información te salva de cometer errores?**

### R/ta:

El comando `git status` es importante debido a que nos muestra los archivos que están en nuestra carpeta y nos permite conocer cuáles han tenido cambios, cuáles se han agregado y cuáles son archivos nuevos.

Hacer `git status` antes de utilizar `git add` nos permite revisar qué archivos tienen modificaciones y decidir cuáles queremos enviar al área de preparación (*staging area*). Después de utilizar `git add`, podemos volver a ejecutar `git status` para comprobar que los archivos que seleccionamos realmente fueron agregados correctamente.

De esta manera, `git status` nos ayuda a evitar errores, como agregar archivos que no queríamos incluir o dejar por fuera archivos importantes.

---

## PREGUNTA 2: Orden de `pull` y `push`

**Explica con tus palabras por qué es importante hacer `git status` ANTES de hacer un `add` y DESPUÉS de un `add`. ¿Qué información te salva de cometer errores?**

### R/ta:

El comando `git push` puede ser rechazado y mostrar un error con el propósito de proteger la información del repositorio. Esto ocurre cuando Git detecta que el repositorio remoto está más actualizado que nuestra copia local.

Para solucionarlo, se requiere utilizar el comando `git pull`, que permite traer a nuestra computadora los cambios realizados por otro usuario en el repositorio remoto.

Si otra persona y yo modificamos las mismas líneas de un archivo, Git detectará un **conflicto** y nos pedirá que decidamos qué cambios conservar.

Después de elegir y unir correctamente los cambios, debemos guardar el archivo y continuar con el proceso.

Una vez resuelto el conflicto y confirmado el cambio mediante un *commit*, se vuelve a ejecutar:

```bash
git push
```

De esta manera, se envía la versión actualizada del código al repositorio remoto.

---

## PREGUNTA 3: Autoevaluación

### ¿Qué fue lo más difícil de la actividad?

### R/ta:

Lo más difícil de la actividad fue modificar el archivo de GitHub y traer los cambios del repositorio remoto al repositorio local.

También fue necesario comprender cómo Git maneja los cambios realizados por diferentes usuarios y cómo solucionar los conflictos cuando dos personas modifican las mismas líneas de un archivo.

### ¿Qué comando crees que usarás más en tu día a día y por qué?

### R/ta:

El comando `git status`, debido a que me permite conocer la información de los archivos, sus modificaciones, los archivos nuevos y los archivos que han sido agregados al área de preparación, entre otros aspectos.

Otro comando que me parece muy útil es `git clone`, debido a que permite clonar repositorios y archivos para poder trabajar con ellos de manera local y mejorar la productividad en los proyectos.