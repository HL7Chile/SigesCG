///////////////////////Información instancia//////////////////////////
Instance: NotiAtenEsp
//Id: datos-sigges-notificacion-atencion
Title: "Notificacion Atención Especialidad (Prestación Otorgada)"
Description: "Formularo Caso de Uso 2: Atención Especialidad"
InstanceOf: Questionnaire
Usage: #example

* status = #draft
* version = "0.1.0"

* status = #draft
* date = "2024-11-20"
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

* item[=].item[=].item[0].linkId = "primerApellido"
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

* item[=].item[=].item[0].linkId = "emailPac"
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


* item[=].item[+].linkId = "IdentificadorProblema"
* item[=].item[=].text = "Identificadores asociados al caso"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "caso"
* item[=].item[=].item[=].text = "Caso activo asociado al paciente"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[+].linkId = "Prestacion"
* item[=].text = "Datos de prestaciónes realizadas al paciente"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "origenPrestacion"
* item[=].item[=].text = "Datos de solicitud de la prestación"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nombreServicioSaludOtorga"
* item[=].item[=].item[=].text = "Nombre del Servicio de Salud que otorga la prestación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "nombreEstablecimientoOtorga"
* item[=].item[=].item[=].text = "Nombre del establecimiento que otorga la prestación"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true


* item[=].item[+].linkId = "tipoPrest"
* item[=].item[=].text = "Tipo de prestación ejecutada"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "nombrePrestacion"
* item[=].item[=].item[=].text = "Nombre de la Prestación en texto libre"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "codPrestacion"
* item[=].item[=].item[=].text = "Código de la Prestación ejecutada"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "https://hl7chile.cl/fhir/ig/sigescg/ValueSet/VSPrestacion"
* item[=].item[=].item[=].required = false


* item[=].item[+].linkId = "fechas"
* item[=].item[=].text = "Fechas de ejecusión de la prestación"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "fechaInicio"
* item[=].item[=].item[=].text = "Fecha de Inicio de la Prestación"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "horaInicio"
* item[=].item[=].item[=].text = "Hora de Inicio de la Prestación"
* item[=].item[=].item[=].type = #time
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].linkId = "fechaFin"
* item[=].item[=].item[=].text = "Fecha de Finalización de la Prestación"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].required = false







