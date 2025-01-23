///////////////////////Información instancia//////////////////////////
Instance: CreacionCaso 
Title: "Solicitud de Consulta"
Description: "Formularo Caso de Uso 1: Solicitud de una Consulta"
InstanceOf: Questionnaire
Usage: #example

* status = #draft
* version = "0.1.0"

* status = #draft
* date = "2024-10-16"
* publisher = "HL7 Chile"




* item[0].linkId = "datosPaciente"
* item[=].text = "Datos del paciente"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "identificacionPac"
* item[=].item[=].text = "RUN del Paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "runPac"
* item[=].item[=].item[=].text = "Número RUN de identificación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "verificador"
* item[=].item[=].item[=].text = "Dígito verificador del RUN"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "nombreRegistrado"
* item[=].item[=].text = "Nombre del Paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "primerApellido"
* item[=].item[=].item[=].text = "Primer apellido del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "segundoApellido"
* item[=].item[=].item[=].text = "Segundo apellido del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "nombresPac"
* item[=].item[=].item[=].text = "Nombres del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "direccionPac"
* item[=].item[=].text = "Dirección de residencia habitual"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "calleNumeroDirPac"
* item[=].item[=].item[=].text = "Nombre Calle, numero y casa o depto"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "communaDirPac"
* item[=].item[=].item[=].text = "Código de la comuna de residencia del paciente"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosComunaCL"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "provinciaDirPac"
* item[=].item[=].item[=].text = "Código de la provincia de residencia del Paciente"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet =  "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosProvinciasCL"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "regionDirPac"
* item[=].item[=].item[=].text = "Código de la región de residencia del paciente"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosRegionesCL"
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "datoContactoPac"
* item[=].item[=].text = "Datos de contacto del paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "emailPac"
* item[=].item[=].item[=].text = "Correo electrónico del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "numeroTelPac"
* item[=].item[=].item[=].text = "Teléfono de contacto del paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "datosDemogAdic"
* item[=].item[=].text = "Otros Datos Demográficos"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "sexoNacimiento"
* item[=].item[=].item[=].text = "Sexo de nacimiento paciente"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSSexoListadoDeis"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "fechaNacimiento"
* item[=].item[=].item[=].text = "Fecha de nacimiento paciente"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "edadPaciente"
* item[=].item[=].item[=].text = "Edad del paciente"
* item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "garantiaPac"
* item[=].item[=].text = "Garantía asociada al paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "codigoMarca"
* item[=].item[=].item[=].text = "Código de marca que el paciente posee"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSMArca"

* item[=].item[=].item[+].linkId = "acreditacionPac"
* item[=].item[=].item[=].text = "Acreditación que posee el paciente"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSPrevision"
* item[=].item[=].item[=].required = true




* item[+].linkId = "solicitudCaso"
* item[=].text = "Conjunto de datos asociados a la apertura de caso"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "fechas"
* item[=].item[=].text = "Fechas asociadas a la Solicitud"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "fechaCreacionCaso"
* item[=].item[=].item[=].text = "Fecha de Creación Caso"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "horaCreacionCaso"
* item[=].item[=].item[=].text = "Hora de Creación Caso"
* item[=].item[=].item[=].type = #time
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "establecimientos"
* item[=].item[=].text = "Establecimientos de notificación y destino asociados al caso del paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "servicioSaludOrigen"
* item[=].item[=].item[=].text = "Nommbre del Servicio de Salud Notificador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "establecimientoOrigen"
* item[=].item[=].item[=].text = "Nombre del Establecimiento de Origen"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "servicioSaludDestino"
* item[=].item[=].item[=].text = "Nommbre del Servicio de Salud Notificador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "establecimientoDestino"
* item[=].item[=].item[=].text = "Nombre del Establecimiento de Destino"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true



* item[=].item[+].linkId = "especialidades"
* item[=].item[=].text = "Especialidades de origen y destino paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true
  
* item[=].item[=].item[0].linkId = "especialidadOrigen"
* item[=].item[=].item[=].text = "Especialidad de Origen del caso"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSEspecialidadesCL"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "especialidadDestino"
* item[=].item[=].item[=].text = "Especialidad Destino del caso"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSEspecialidadesCL"
* item[=].item[=].item[=].required = true

* item[=].item[+].linkId = "antecedentes"
* item[=].item[=].text = "Antecedentes adicionales asociados al caso"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "referidoPor"
* item[=].item[=].item[=].text = "El paciente es derivado para?"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSDerivadoPara"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "sospechaGes"
* item[=].item[=].item[=].text = "Definición de patología GES de sospecha"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "hipotesisDiagnostica"
* item[=].item[=].item[=].text = "Diagnóstico del cual se sospecha el paciente tiene"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "fundamentoDiagnostico"
* item[=].item[=].item[=].text = "Fundamento mediante el cual se sustenta el diagnóstico presunto"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = false

* item[=].item[+].linkId = "procedimientos"
* item[=].item[=].text = "Exámenes y procedimientos de los cuales ha sido objeto  el paciente"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "examenesRealizados"
* item[=].item[=].item[=].text = "Exámenes realizados por el paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].repeats = true

* item[=].item[+].linkId = "IdentificadoresCaso"
* item[=].item[=].text = "Identificadores asociados al caso"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "numeroFolio"
* item[=].item[=].item[=].text = "No de folio de la notificación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false


* item[=].item[=].item[0].linkId = "codEstadoCaso"
* item[=].item[=].item[=].text = "Código del estado del caso (debiera ser solo uno en este caso)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].required = true

* item[+].linkId = "profesionalNotificador"
* item[=].text = "Datos del profesional notificador"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "identificadorProf"
* item[=].item[=].text = "Identificación del profesional notificador"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "runPrest"
* item[=].item[=].item[=].text = "Número RUN de identificación del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "verificadorPrest"
* item[=].item[=].item[=].text = "Dígito verificador del RUN del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
  
* item[=].item[+].linkId = "nombreRegistradoPrest"
* item[=].item[=].text = "Nombre del Prestador"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "primerApellidoPrest"
* item[=].item[=].item[=].text = "Primer apellido del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "segundoApellidoPrest"
* item[=].item[=].item[=].text = "Segundo apellido del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombresPrest"
* item[=].item[=].item[=].text = "Nombres del prestador"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true

  
