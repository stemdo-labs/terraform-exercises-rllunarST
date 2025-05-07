# Respuestas

## Preguntas parte 1:

### **Primera Pregunta: ¿Qué observas? ¿Es el código generado exactamente lo que esperabas?**

**R:** Lo que se puede observar es que al usar el comando `terraform plan -generate-config-out="generated.tf"` nos generará un fichero con bloques de recursos, estos bloques corresponden a cada uno de los recursos que ya existen en azure, como el grupo de recursos, el azure key vault y el storage account. 

Con el comando `terraform plan -generate-config-out="generated.tf"` podemos generar de forma automatica el codigo HCL necesario para representar la estructura de los recursos ya existentes en un fichero `.tf`.

El codigo incluye un grupo de atributos bastante amplio que son los atributos configurables junto a los valores que posee cada recurso

### **Segunda Pregunta: ¿Qué sucede cuando importas un recurso que ya existe en Azure pero no en el archivo de configuración de Terraform?**

**R:** A la hora de importar un recurso ya existente en Azure pero no en el fichero de configuración Terraform creará una entrada de estado en el fichero terraform.tfstate, esto permite a terraform gestionarlo aunque no se declaroe el recurso en ningun fichero .tf. Hay que tener mucho cuidado porque esto no se refleja en ningun fichero `.tf` y puedes borrarlo sin querer limpiando el estado. 

### **Tercera Pregunta: ¿Cómo afecta la importación al tfstate? ¿Qué diferencias observas en el estado después de aplicar los cambios?**

**R:** La importacion de un recurso afecta al estado porque añade una entrada para dicho recurso por lo que el fichero `terraform.tfstate` tiene registrado el recurso y su configuración como si se hubiese crado en terraform, si aplicamos los cambios entonces el estado reflejará la configuración real encontrada en el recurso de Azure, esto le permite a terraform trabajar con valores de forma correcta sin fallar.

Las diferencias que se pueden observar es que antes de la importación el fichero terraform.tfstate no contenia ninguna información ya que se encontraba vacio, despues d ela importación el fichero ahora contendrá la información sobre los recursos que se importaron con sus valores y configuraciones de Azure sin necesidad de tener que hacerlos a mano.

## Preguntas parte 2:

### **Cuarta Pregunta: ¿Qué sucede en el tfstate cuando eliminas un recurso en Azure sin utilizar Terraform?**

**R:** Al eliminar un recurso en Azure sin utilizar terraform no se reflejará en el fichero `.tfstate` ya que terraform no actualiza el estado por si solo, solo se reflejará en el fichero `.tfstate` si hacemos un `terraform plan` o si aplicamos los cambios.

### **Quinta Pregunta: ¿Cómo puedes asegurarte de que el tfstate refleja el estado real de tus recursos?**

**R:** Para asegurarnos de que el tfstate refleje el estado real de nuestros recursos podemos usar el comando `terraform show` que nos permite ver el estado actual de los recursos en terraform.

### **Sexta Pregunta: ¿Qué pasos adicionales son necesarios luego de importar y luego de eliminar recursos?**

**R:** A la hora de importar recursos es necesario usar el comando `terraform plan -generate-config-out="generated.tf` para generar el fichero con los bloques de recursos, luego de esto usamos el comando `terraform plan` y `terraform apply` para asegurarnos de que el recurso se gestione correctamente y este alineado con la configuración.

Después de eliminar recursos directamente desde Azure debemos ejecutar `terraform state rm <Nombre del recurso>` para eliminar el recurso del tfstate y luego ejecutar `terraform plan` y `terraform apply` para asegurarnos de que el recurso se gestione correctamente y este alineado con la configuración.