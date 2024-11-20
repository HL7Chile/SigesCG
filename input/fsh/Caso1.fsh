///////////////////////Información instancia//////////////////////////
Instance: CreacionCaso 
Title: "Creación de Caso"
Description: "Formularo Caso de Uso 1: Creación de Caso"
InstanceOf: Questionnaire
Usage: #example

* status = #draft
* version = "0.1.0"

* status = #draft
* date = "2024-10-16"
* publisher = "HL7 Chile"




* item[0].linkId = "datosPaciente"
* item[0].text = "Datos del paciente"
* item[0].type = #group
* item[0].required = true

* item[0].item[0].linkId = "identificacionPac"
* item[0].item[0].text = "RUN del Paciente"
* item[0].item[0].type = #group
* item[0].item[0].required = true

* item[0].item[0].item[0].linkId = "runPac"
* item[0].item[0].item[0].text = "Número RUN de identificación"
* item[0].item[0].item[0].type = #string
* item[0].item[0].item[0].required = true
* item[0].item[0].item[1].linkId = "verificador"
* item[0].item[0].item[1].text = "Dígito verificador del RUN"
* item[0].item[0].item[1].type = #string
* item[0].item[0].item[1].required = true

* item[0].item[1].linkId = "nombreRegistrado"
* item[0].item[1].text = "Nombre del Paciente"
* item[0].item[1].type = #group
* item[0].item[1].required = true

* item[0].item[1].item[0].linkId = "primerApellido"
* item[0].item[1].item[0].text = "Primer apellido del paciente"
* item[0].item[1].item[0].type = #string
* item[0].item[1].item[0].required = true
* item[0].item[1].item[1].linkId = "segundoApellido"
* item[0].item[1].item[1].text = "Segundo apellido del paciente"
* item[0].item[1].item[1].type = #string
* item[0].item[1].item[1].required = true
* item[0].item[1].item[2].linkId = "nombresPac"
* item[0].item[1].item[2].text = "Nombres del paciente"
* item[0].item[1].item[2].type = #string
* item[0].item[1].item[2].required = true
* item[0].item[1].item[2].repeats = true

* item[0].item[2].linkId = "direccionPac"
* item[0].item[2].text = "Dirección de residencia habitual"
* item[0].item[2].type = #group
* item[0].item[2].required = true

* item[0].item[2].item[0].linkId = "calleNumeroDirPac"
* item[0].item[2].item[0].text = "Nombre Calle, numero y casa o depto"
* item[0].item[2].item[0].type = #string
* item[0].item[2].item[0].required = true

* item[0].item[2].item[1].linkId = "communaDirPac"
* item[0].item[2].item[1].text = "Código de la comuna de residencia del paciente"
* item[0].item[2].item[1].type = #choice
* item[0].item[2].item[1].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosComunaCL"
* item[0].item[2].item[1].required = true

* item[0].item[2].item[2].linkId = "provinciaDirPac"
* item[0].item[2].item[2].text = "Código de la provincia de residencia del Paciente"
* item[0].item[2].item[2].type = #choice
* item[0].item[2].item[2].answerValueSet =  "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosProvinciasCL"
* item[0].item[2].item[2].required = true

* item[0].item[2].item[3].linkId = "regionDirPac"
* item[0].item[2].item[3].text = "Código de la región de residencia del paciente"
* item[0].item[2].item[3].type = #choice
* item[0].item[2].item[3].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSCodigosRegionesCL"
* item[0].item[2].item[3].required = true

* item[0].item[3].linkId = "datoContactoPac"
* item[0].item[3].text = "Datos de contacto del paciente"
* item[0].item[3].type = #group
* item[0].item[3].required = true
* item[0].item[3].repeats = true

* item[0].item[3].item[0].linkId = "emailPac"
* item[0].item[3].item[0].text = "Correo electrónico del paciente"
* item[0].item[3].item[0].type = #string
* item[0].item[3].item[0].required = true

* item[0].item[3].item[1].linkId = "numeroTelPac"
* item[0].item[3].item[1].text = "Teléfono de contacto del paciente"
* item[0].item[3].item[1].type = #string
* item[0].item[3].item[1].required = true

* item[1].linkId = "datosDemogAdic"
* item[1].text = "Otros Datos Demográficos"
* item[1].type = #group
* item[1].required = true

* item[1].item[0].linkId = "sexoNacimiento"
* item[1].item[0].text = "Sexo de nacimiento paciente"
* item[1].item[0].type = #choice
* item[1].item[0].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSSexoListadoDeis"
* item[1].item[0].required = true

* item[1].item[1].linkId = "fechaNacimiento"
* item[1].item[1].text = "Fecha de nacimiento paciente"
* item[1].item[1].type = #date
* item[1].item[1].required = true

* item[1].item[2].linkId = "edadPaciente"
* item[1].item[2].text = "Edad del paciente"
* item[1].item[2].type = #integer
* item[1].item[2].required = true

* item[2].linkId = "garantiaPac"
* item[2].text = "Garantía asociada al paciente"
* item[2].type = #group
* item[2].required = true

* item[2].item[0].linkId = "tipoGarantia"
* item[2].item[0].text = "Tipo de garantía asociada al paciente"
* item[2].item[0].type = #group
* item[2].item[0].required = true

* item[2].item[0].item[0].linkId = "codigoPrais"
* item[2].item[0].item[0].text = "Código PRAIS asociado al paciente (no hay códigos)"
* item[2].item[0].item[0].type = #choice
* item[2].item[0].item[0].required = true

* item[2].item[1].linkId = "previsionPac"
* item[2].item[1].text = "Previsión que posee el paciente"
* item[2].item[1].type = #group
* item[2].item[1].required = true

* item[2].item[1].item[0].linkId = "tipoPrevision"
* item[2].item[1].item[0].text = "Tipo de previsión asociada al paciente"
* item[2].item[1].item[0].type = #choice
* item[2].item[1].item[0].required = true


* item[+].linkId = "solicitudCaso"
* item[=].text = "Conjunto de datos asociados a la apertura de caso"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "fechas"
* item[=].item[0].text = "Fechas asociadas a la Solicitud"
* item[=].item[0].type = #group
* item[=].item[0].required = true

* item[=].item[0].item[0].linkId = "fechaCreacionCaso"
* item[=].item[0].item[0].text = "Fecha de Creación Caso"
* item[=].item[0].item[0].type = #date
* item[=].item[0].item[0].required = true

* item[=].item[0].item[1].linkId = "horaCreacionCaso"
* item[=].item[0].item[1].text = "Hora de Creación Caso"
* item[=].item[0].item[1].type = #time
* item[=].item[0].item[1].required = true

* item[=].item[1].linkId = "establecimientos"
* item[=].item[1].text = "Establecimientos de notificación y destino asociados al caso del paciente"
* item[=].item[1].type = #group
* item[=].item[1].required = true

* item[=].item[1].item[0].linkId = "servicioSaludNotificacion"
* item[=].item[1].item[0].text = "Nommbre del Servicio de Salud Notificador"
* item[=].item[1].item[0].type = #string
* item[=].item[1].item[0].required = true

* item[=].item[1].item[1].linkId = "establecimientoOrigen"
* item[=].item[1].item[1].text = "Nombre del Establecimiento de Origen"
* item[=].item[1].item[1].type = #string
* item[=].item[1].item[1].required = true

* item[=].item[1].item[2].linkId = "establecimientoDestino"
* item[=].item[1].item[2].text = "Nombre del Establecimiento de Destino"
* item[=].item[1].item[2].type = #string
* item[=].item[1].item[2].required = true

* item[=].item[1].item[3].linkId = "unidadClinicaDestino"
* item[=].item[1].item[3].text = "Unidad Clínica Destino"
* item[=].item[1].item[3].type = #string
* item[=].item[1].item[3].required = true

* item[=].item[2].linkId = "especialidades"
* item[=].item[2].text = "Especialidades de origen y destino paciente"
* item[=].item[2].type = #group
* item[=].item[2].required = true

* item[=].item[2].item[0].linkId = "especialidadOrigen"
* item[=].item[2].item[0].text = "Especialidad de Origen del caso"
* item[=].item[2].item[0].type = #choice
* item[=].item[2].item[0].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSEspecialidadesCL"
* item[=].item[2].item[0].required = true

* item[=].item[2].item[1].linkId = "especialidadDestino"
* item[=].item[2].item[1].text = "Especialidad Destino del caso"
* item[=].item[2].item[1].type = #choice
* item[=].item[2].item[1].answerValueSet = "https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSEspecialidadesCL"
* item[=].item[2].item[1].required = true

* item[=].item[3].linkId = "antecedentes"
* item[=].item[3].text = "Antecedentes adicionales asociados al caso"
* item[=].item[3].type = #group
* item[=].item[3].required = true

* item[=].item[3].item[0].linkId = "referidoPor"
* item[=].item[3].item[0].text = "El paciente es derivado para?"
* item[=].item[3].item[0].type = #choice
* item[=].item[3].item[0].required = true

* item[=].item[3].item[1].linkId = "sospechaGes"
* item[=].item[3].item[1].text = "Definición de patología GES de sospecha"
* item[=].item[3].item[1].type = #choice
* item[=].item[3].item[1].required = true

* item[=].item[3].item[2].linkId = "hipotesisDiagnostica"
* item[=].item[3].item[2].text = "Diagnóstico del cual se sospecha el paciente tiene"
* item[=].item[3].item[2].type = #string
* item[=].item[3].item[2].required = true

* item[=].item[3].item[3].linkId = "fundamentoDiagnostico"
* item[=].item[3].item[3].text = "Fundamento mediante el cual se sustenta el diagnóstico presunto"
* item[=].item[3].item[3].type = #string
* item[=].item[3].item[3].required = true
* item[=].item[3].item[3].repeats = true

* item[=].item[4].linkId = "procedimientos"
* item[=].item[4].text = "Exámenes y procedimientos de los cuales ha sido objeto  el paciente"
* item[=].item[4].type = #group
* item[=].item[4].required = true

* item[=].item[4].item[0].linkId = "examenesRealizados"
* item[=].item[4].item[0].text = "Exámenes realizados por el paciente"
* item[=].item[4].item[0].type = #choice
* item[=].item[4].item[0].required = true
* item[=].item[4].item[0].repeats = true

* item[=].item[5].linkId = "IdentificadoresCaso"
* item[=].item[5].text = "Identificadores asociados al caso"
* item[=].item[5].type = #group
* item[=].item[5].required = true

* item[=].item[5].item[0].linkId = "numeroFolio"
* item[=].item[5].item[0].text = "No de folio de la notificación"
* item[=].item[5].item[0].type = #string
* item[=].item[5].item[0].required = true

* item[=].item[5].item[1].linkId = "numeroCaso"
* item[=].item[5].item[1].text = "Número de caso asociado a la notificación"
* item[=].item[5].item[1].type = #string
* item[=].item[5].item[1].required = true

* item[=].item[6].linkId = "estadoCaso"
* item[=].item[6].text = "Estado del caso"
* item[=].item[6].type = #group
* item[=].item[6].required = true

* item[=].item[6].item[0].linkId = "codEstadoCaso"
* item[=].item[6].item[0].text = "Código del estado del caso (debiera ser solo uno en este caso)"
* item[=].item[6].item[0].type = #choice
* item[=].item[6].item[0].required = true

* item[+].linkId = "profesionalNotificador"
* item[=].text = "Datos del profesional notificador"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].linkId = "identificadorProf"
* item[=].item[=].text = "Identificación del profesional notificador"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].linkId = "runPrest"
* item[=].item[=].item[0].text = "Número RUN de identificación del prestador"
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[0].required = true

* item[=].item[=].item[1].linkId = "verificadorPrest"
* item[=].item[=].item[1].text = "Dígito verificador del RUN del prestador"
* item[=].item[=].item[1].type = #string
* item[=].item[=].item[1].required = true
  
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

    
