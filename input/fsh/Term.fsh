CodeSystem: CSMarca
Id: CSMarca
Title: "Códigos de Marca"
Description: "Codigos de la marca del paciente"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#CL

* #01 "PRAIS"
* #02 "ANTUCO"
* #03 "DIRIGENTE VECINAL"
* #04 "PRI LONCO"
* #05 "PRI LEMUN"

ValueSet: VSMarca
Id: VSMArca
Title: "Códigos de  Marca"
Description: "Marca del paciente"
* ^status = #active
* ^experimental = false

* include codes from system CSMarca

CodeSystem: CSExamenes
Id: CSExamenes
Title: "Códigos de Exámenes"
Description: "Codigos para examenes realizados por el paciente"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#CL

* #01 "A"
* #02 "B"
* #03 "C"

ValueSet: VSExamenes
Id: VSExamenes
Title: "Códigos de  Exámenes"
Description: "Códigos exámenes realizados por el paciente"
* ^status = #active
* ^experimental = false

* include codes from system CSExamenes

CodeSystem: CSPrevision
Id: CSPrevision
Title: "CS Prevision"
Description: "Codigos de la previsión del paciente"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#CL

* #01 "FONASA"
* #02 "ISAPRE"
* #03 "CAPREDENA"
* #04 "DIPRECA"
* #05 "SISA"
* #96 "NINGUNA"
* #99 "DESCONOCIDO"


ValueSet: VSPrevision
Id: VSPrevision
Title: "VS Prevision"
Description: "Previsión del paciente"
* ^status = #active
* ^experimental = false

* include codes from system CSPrevision


CodeSystem: CSProbSalud
Id: CSProbSalud
Title: "Códigos de Problemas de Salud"
Description: "Codigos para problemas de salud de paciente"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#CL

* #1 "NFERMEDAD RENAL CRÓNICA ETAPA 4 Y 5"
* #2	"ardiopatías Congénitas Operables en Personas Menores de 15 Años"
* #3	"ÁNCER CERVICOUTERINO"
* #4	"LIVIO DEL DOLOR POR CÁNCER AVANZADO Y CUIDADOS PALIATIVOS"
* #5	"NFARTO AGUDO DEL MIOCARDIO"
* #6	"IABETES MELLITUS TIPO 1"
* #7	"IABETES MELLITUS TIPO 2"
* #8	"ÁNCER DE MAMA EN PERSONAS DE 15 AÑOS Y MÁS"
* #9	"ISRAFIAS ESPINALES"
* #10	"TRATAMIENTO QUIRÚRGICO DE ESCOLIOSIS EN MENORES DE 25 AÑOS"
* #11	"TRATAMIENTO QUIRÚRGICO DE CATARATAS"
* #12	"ENDOPROTESIS TOTAL DE CADERA EN PERSONAS DE 65 AÑOS Y MÁS CON ARTROSIS DE CADERA CON LIMITACIÓN FUNCIONAL SEVERA"
* #13	"FISURA LABIOPALATINA"
* #14	"CÁNCER EN MENORES DE 15 AÑOS"
* #15	"ESQUIZOFRENIA"
* #16	"CÁNCER DE TESTÍCULO EN PERSONAS DE 15 AÑOS Y MÁS"
* #17	"LINFOMAS EN PERSONAS DE 15 AÑOS Y MÁS"
* #18	"SÍNDROME DE LA INMUNODEFICIENCIA ADQUIRIDA VIH/SIDA"
* #19	"INFECCIÓN RESPIRATORIA AGUDA (IRA) BAJA DE MANEJO AMBULATORIO EN MENORES DE 5 AÑOS"
* #20	"NEUMONIA ADQUIRIDA EN LA COMUNIDAD DE MANEJO AMBULATORIO EN PERSONAS DE 65 AÑOS Y MÁS"
* #21	"HIPERTENSIÓN ARTERIAL PRIMARIA O ESENCIAL EN PERSONAS DE 15 AÑOS Y MÁS"
* #22	"EPILEPSIA NO REFRACTARIA EN PERSONAS DESDE 1 AÑO Y MENORES DE 15 AÑOS"
* #23	"SALUD ORAL INTEGRAL PARA NIÑOS DE 6 AÑOS"
* #24	"PREVENCIÓN DE PARTO PREMATURO"
* #25	"TRASTORNOS DE GENERACIÓN DEL IMPULSO Y CONDUCCIÓN EN PERSONAS DE 15 AÑOS Y MÁS, QUE REQUIEREN MARCAPASO."
* #26	"COLECISTECTOMÍA PREVENTIVA DEL CÁNCER DE VESÍCULA EN PERSONAS DE 35 A 49 AÑOS"
* #27	"CÁNCER GÁSTRICO"
* #28	"CÁNCER DE PRÓSTATA EN PERSONAS DE 15 AÑOS Y MÁS"
* #29	"VICIOS DE REFRACCIÓN EN PERSONAS DE 65 AÑOS Y MÁS"
* #30	"ESTRABISMO EN MENORES DE 9 AÑOS"
* #31	"RETINOPATÍA DIABÉTICA"
* #32	"DESPRENDIMIENTO DE RETINA REGMATÓGENO NO TRAUMÁTICO."
* #33	"HEMOFILIA"
* #34	"DEPRESIÓN EN PERSONAS DE 15 AÑOS Y MÁS"
* #35	"TRATAMIENTO QUIRURGICO DE LA HIPERPLASIA BENIGNA DE LA PRÓSTATA EN PERSONAS SINTOMÁTICAS"
* #36	"Ayudas técnicas para personas de 65 años y más"
* #37	"Ataque Cerebrovascular Isquémico  en personas de 15 años y más"
* #38	"ENFERMEDAD PULMONAR OBSTRUCTIVA CRÓNICA DE TRATAMIENTO AMBULATORIO"
* #39	"ASMA BRONQUIAL MODERADA Y GRAVE EN MENORES DE 15 AÑOS"
* #40	"SÍNDROME DE DIFICULTAD RESPIRATORIA EN EL RECIÉN NACIDO"
* #41	"TRATAMIENTO MÉDICO EN PERSONAS DE 55 AÑOS Y MÁS CON ARTROSIS DE CADERA Y/O RODILLA, LEVE O MODERADA"
* #42	"HEMORRAGIA SUBARACNOIDEA SECUNDARIA A RUPTURA DE ANEURISMAS CEREBRALES"
* #43	"TUMORES PRIMARIOS DEL SISTEMA NERVIOSO CENTRAL EN PERSONAS DE 15 AÑOS O MÁS"
* #44	"TRATAMIENTO QUIRÚRGICO DE HERNIA DEL NÚCLEO PULPOSO LUMBAR"
* #45	"LEUCEMIA EN PERSONAS DE 15 AÑOS Y MÁS"
* #47	"SALUD ORAL INTEGRAL DEL ADULTO DE 60 AÑOS"
* #48	"POLITRAUMATIZADO GRAVE"
* #49	"TRAUMATISMO CRÁNEO ENCEFÁLICO MODERADO O GRAVE"
* #50	"TRAUMA OCULAR GRAVE"
* #51	"FIBROSIS QUÍSTICA"
* #52	"ARTRITIS REUMATOIDEA"
* #53	"CONSUMO PERJUDICIAL O DEPENDENCIA DE RIESGO BAJO A MODERADO DE ALCOHOL Y DROGAS EN PERSONAS MENORES DE 20 AÑOS"
* #54	"ANALGESIA DEL PARTO"
* #55	"GRAN QUEMADO"
* #56	"HIPOACUSIA BILATERAL EN PERSONAS DE 65 AÑOS Y MÁS QUE REQUIEREN USO DE AUDÍFONO"
* #57	"RETINOPATÍA DEL PREMATURO"
* #58	"DISPLASIA BRONCOPULMONAR DEL PREMATURO"
* #59	"HIPOACUSIA NEUROSENSORIAL BILATERAL DEL PREMATURO"
* #60	"EPILEPSIA NO REFRACTARIA EN PERSONAS DE 15 AÑOS Y MÁS"
* #61	"ASMA BRONQUIAL EN PERSONAS DE 15 AÑOS Y"
* #62	"ENFERMEDAD DE PARKINSON"
* #63	"ARTRITIS IDIOPÁTICA JUVENIL"
* #64	"PREVENCION SECUNDARIA INSUFICIENCIA RENAL CRONICA TERMINAL"
* #65	"DISPLASIA LUXANTE DE CADERAS"
* #66	"SALUD ORAL INTEGRAL DE LA EMBARAZADA"
* #67	"ESCLEROSIS MÚLTIPLE RECURRENTE REMITENTE"
* #68	"HEPATITIS B"
* #69	"Hepatitis Crónica por Virus Hepatitis C"
* #78	"LUPUS ERITEMATOSO SISTÉMICO"
* #75	"Trastorno Bipolar 15 Años y Más"
* #72	"Cáncer Vesical 15 Años y Más"
* #80	"TRATAMIENTO ERRADICACIÓN HELICOBACTER PYLORI"
* #73	"Osteosarcoma 15 Años y Más"
* #71	"Cáncer de Ovario Epitelial"
* #76	"Hipotiroidismo en Personas de 15 Años y Más"
* #70	"Cáncer Colorectal 15 Años y Más"
* #74	"TRATAMIENTO QUIRÚRGICO VÁLVULA AÓRTICA 15 Y MÁS"
* #79	"TRATAMIENTO QUIRÚRGICO VÁLVULA MITRAL Y TRICÚSPIDE 15 Y MÁS"
* #77	"Tratamiento de Hipoacusia Moderada, Severa y Profunda en personas Menores de 4 Años"
* #46	"Urgencia Odontológica Ambulatoria"
* #85	"ENFERMEDAD DE ALZHEIMER Y OTRAS DEMENCIAS"
* #81	"Cáncer de Pulmón en Personas de 15 Años y Más"
* #82	"Cáncer de Tiroides en personas de 15 años y más"
* #86	"Atención Integral de Salud en Agresión Sexual Aguda "
* #83	"Cáncer Renal en personas de 15 años y más"
* #84	"MIELOMA MÚLTIPLE EN PERSONAS DE 15 AÑOS Y MÁS"
* #87	"Rehabilitación SARS COV-2"

ValueSet: VSProbSalud
Id: VSProbSalud
Title: "Códigos Problemas de Salud"
Description: "Problemas de salud detectados en pacientes"
* ^status = #active
* ^experimental = false

* include codes from system CSProbSalud


CodeSystem: CSTipoDoc
Id: CSTipoDoc
Title: "Códigos de tipo de documento"
Description: "Codigos para tipo de documento"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#CL

* #1	"Solicitud de interconsulta	SIC"
* #2	"Informe Proceso Diagnostico IPD"
* #3	"Orden de Atención OA"
* #10    "Prestacion Otorgada	PO"
* #15    "Programa Especial PE"

ValueSet: VSTipoDoc
Id: VSTipoDoc
Title: "Códigos de tipo de documento"
Description: "Codigos para tipo de documento"
* ^status = #active
* ^experimental = false

* include codes from system CSTipoDoc

CodeSystem: CSPrestacion
Id: CSPrestacion
Title: "Códigos de prestaciones"
Description: "Codigos para prestaciones"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#CL

* #1 "Prestacion1"

ValueSet: VSPrestacion
Id: VSPrestacion
Title: "Códigos de prestaciones"
Description: "Codigos para prestaciones"
* ^status = #active
* ^experimental = false

* include codes from system CSPrestacion

CodeSystem: CSDerivadoPara
Id: CSDerivadoPara
Title: "Códigos asociados a la derivación"
Description: "Codigos asociados para la derivación de paciente, indicando el objetivo"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^jurisdiction = urn:iso:std:iso:3166#CL

* #1 "Confirmación Diagnóstica"
* #2 "Realizar Tratamiento"
* #3 "A Seguimiento"
* #4 "Control de Especialidad"
* #5 "Otro"
* #6 "Seguimiento"
* #7 "Tratamiento"
* #9 "Diagnostico"
* #10 "Rehabilitación"


ValueSet: VSDerivadoPara
Id: VSDerivadoPara
Title: "Códigos asociados a la derivación"
Description: "Codigos asociados para la derivación de paciente, indicando el objetivo"
* ^status = #active
* ^experimental = false

* include codes from system CSDerivadoPara