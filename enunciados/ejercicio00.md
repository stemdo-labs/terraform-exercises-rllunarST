# Ejercicios de Terraform para Infraestructura como Código (IaC)

¡Bienvenido/a al repositorio de ejercicios de Terraform para IaC!

Este repositorio está diseñado para ayudarte a adquirir habilidades prácticas con Terraform, una de las herramientas más populares para gestionar infraestructura como código. A través de estos ejercicios, aprenderás a escribir configuraciones de Terraform para desplegar y administrar recursos en diversos proveedores de nube.

## Objetivos

Con estos ejercicios, adquirirás experiencia práctica en:

- Configuración inicial de Terraform.
- Uso de **proveedores** para gestionar recursos en la nube (AWS, Azure, GCP, etc.).
- Definición de recursos utilizando **HCL (HashiCorp Configuration Language)**.
- Creación y reutilización de **módulos** de Terraform.
- Gestión de estado remoto y almacenamiento seguro del mismo.
- Uso de variables y outputs para hacer configuraciones más flexibles.
- Aplicación de buenas prácticas en infraestructura como código.

## Estructura del Repositorio

### Carpeta `soluciones/`

Cada ejercicio tiene su propia carpeta dentro del directorio `soluciones/`.

- **README.md**: Explicación paso a paso de cómo se resolvió el ejercicio, incluyendo comandos utilizados, código y capturas (si aplica).
- **ficheros/**: Contiene todos los archivos creados para completar el ejercicio, como configuraciones `.tf`, scripts auxiliares, o cualquier otro recurso necesario.

Ejemplo de estructura:

```
soluciones/
├── ejercicio_1/
│   ├── README.md         # Explicación del ejercicio 1.
│   └── ficheros/         # Archivos creados para el ejercicio.
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── terraform.tfstate
├── ejercicio_2/
│   ├── README.md
│   └── ficheros/
├── ejercicio_3/
│   ├── README.md
│   └── ficheros/
├── ...
└── ejercicio_9/
    ├── README.md
    └── ficheros/
```

## Contribuciones

¡Tus contribuciones son bienvenidas! Si deseas proponer nuevas ideas para ejercicios o mejorar los existentes, abre un **issue** o envía un **pull request** siguiendo las guías de contribución.
