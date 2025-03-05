Profile:        DatosSigesCG
Parent:         QuestionnaireResponse
Id:             datos-sigges-formularios
Title:          "Datos de Notificación de Casos Siges"
Description:    "Perfil de datos relacionados con el seguimiento de un Caso de Notificación Siges de Cancer Gástrico"

* extension contains TipoDoc named TipoDoc 1..1 MS

* identifier 1..1 MS 
* identifier.value 1..1 MS
* identifier ^short = "Identificador único para este set de respuestas"
* identifier ^definition = "Identificador único que será asignado a este set de respuestas."
* identifier.system ^short = "Namespace del valor de identificación."
* identifier.system ^definition = "Identifica la URL sobre la cual se describe el set de valores que es único."
* identifier.value ^short = "Valor del identificador único. Se recomienda sea el número de caso"


* questionnaire 1..1 MS
* questionnaire ^short = "Canónica del cuestionario al cual las respuestas hacen referencia"
* questionnaire ^definition = "El cuestionario a usar depende del paso de notificación que se esta llevando a cabo"
* questionnaire ^comment = "Deb contener la URL Canónica del Questionario, que corresponde al los datos del paso del proceso en el cual se notifican los datos"

 
* status MS
* status ^short = "Estado en el cual se encuentra la respuesta."
* status ^definition = "Para este caso se definirá siempre en completed"
* status from  http://hl7.org/fhir/ValueSet/questionnaire-answers-status
* status ^binding.description = "Se usará In-progress | completed"
//* status = #completed

* authored 1..1 MS
* authored ^short = "Fecha de llenado del formularo correspondiente al paso del proceso de notificación"
* authored ^definition = "Fecha/hora en la cual las respuestas fueron llenadas como definitivas."

* item 1..* MS
* item ^short = "Grupos, subgrupos y preguntas a responder basadas en el Questionario"
* item ^definition = "Grupos y preguntas. Las respuestas estan basadas en el cuestionario deben seguir linkId y tipo de datos"
* item ^comment = "Las respuestas deben contar con el mismo linkId y tipo de datos del Questionnaire, al igual como deben respetar las restricciones generadas tanto para habilitar la respuesta, validar la respuesta o terminologías usadas"

