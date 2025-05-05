# Ejercicio 06

## Objetivos

- Introducción a la utilización de módulos remotos.

## Pre-requisitos

- Haber completado el ejercicio05.

## Enlaces de Interés

- [Uso de source en bloques de tipo Module](https://developer.hashicorp.com/terraform/language/modules/sources).

## Enunciado

Sube el módulo creado en el ejercicio anterior a un repositorio de GitHub (si se han seguido las instrucciones, ya debería estar localizado en la entrega del ejercicio previo).

Crea un nuevo fichero `main.tf` que haga uso del módulo localizado en el repositorio remoto.

Añade también un fichero `variables.tf` para definir las variables de entrada del módulo, un fichero `outputs.tf` para definir las salidas del módulo y un fichero `terraform.tfvars` para definir los valores de las variables de entrada (reutiliza todo lo que sea posible del ejercicio anterior).

Al finalizar el ejercicio, ejecuta el comando `terraform destroy` para eliminar todos los recursos creados y puedas empezar en el siguiente ejercicio sin conflictos de recursos preexistentes.

## Entregables

**IMPORTANTE:** ¡Cuidado con exponer los valores sensibles!

- Documentación del proceso (con capturas de pantalla).
- Código de Terraform utilizado (como un directorio propio dentro del entregable).

## Solución

Para este ejercicio tomare los fichero dentro de la carpeta `ficheros` del ejericicio 5 excepto la carpeta modules y modificaremos el fichero `main.tf` para que importe un modulo de forma remota con github, para esto lo que hare será poner mi repositorio de github publico para realizar la actividad y el fichero `main.tf` quedará de la siguiente forma:

```hcl