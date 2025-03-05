# sigescg

### Contexto
La modernización del sistema de reporte de casos GES, ha empezado a ser una prioridad en el sistema de salud nacional, que ha empezado a ocupar tanto a FONASA como a Prestadores de Salud. Esta guía responde a la necesidad de pilotear un sistema que emule el llenado de formularios para notificación de casos GES de Cáncer Gástrico desde el Hospital de la Florida hacia el sistema de FONASA

### Flujo y Casos

El proceso de notificación se divide en varias etapas que administrativamente notifican el proceso de un caso GES asociado a un paciente. Las etapas de notificación son las siguientes:

<br>

•	*Solicitud de Interconsulta:* se abre una solicitud de interconsulta para paciente, generando el número de caso.
<br>

•	*Notificación de Atención de Especialidad:* Hospital notifica que la atención de especialidad se ha realizado.
<br>

•	*Solicitud de Orden de Atención de Endoscopía:* Caso especial, se notifica de la orden para procedimiento de endoscopía.
<br>

•	*Notificación del Informe del Proceso Diagnóstico:* Notificación del Diagnóstico paciente.
<br>

•	*Cierre de Caso o Extensión de Garantía:* Cierre del caso o Excepción de Garantía.

### Alcance

Esta Guía simula las pantallas de notificación que se llenan desde el prestador hacia el sistema de FONASA. Es por eso que se basa en el uso de recursos de tipo **Questionnaire** y en un perfil **QuestionnaireResponse**. 

<h3>Análisis de las versiones cruzadas</h3> <a name="cross-version-analysis"></a>
  <div>
    {% include cross-version-analysis.xhtml %}
  </div>

  <h3>Dependency Table</h3> <a name="dependency-table"></a>
  <div>
    {% include dependency-table.xhtml %}
  </div>

  <h3>Globals Table</h3> <a name="globals-table"></a>
  <div>
    {% include globals-table.xhtml %}
  </div>

  <h3>IP Statements</h3> <a name="ip-statements"></a>
  <div>
   {% include ip-statements.xhtml %}
  </div>

  <h3>Intellectual Property Considerations</h3>  <a name="ip"> </a>
  <p>
    Si bien esta guía de implementación y el FHIR subyacente tienen licencia de dominio público, esta guía puede incluir ejemplos que utilicen terminologías como 
    como LOINC, SNOMED CT y otros que tienen requisitos de licencia más restrictivos. Los implementadores deben familiarizarse con las licencias y 
    cualquier otra limitación de terminología, cuestionarios y otros componentes utilizados como parte de su proceso de implementación. En algunos casos, 
    Los requisitos de licencia pueden limitar los sistemas con los que se pueden compartir los datos capturados mediante ciertos cuestionarios.
  </p>

  <h3>Responsabilidad</h3>  <a name="responsabilidad"> </a>
  <p>
    Esta especificación se proporciona sin garantía de integridad o coherencia, y la publicación oficial reemplaza este borrador.
    No se puede inferir ninguna responsabilidad por el uso o mal uso de esta especificación, o sus consecuencias.
  </p>
  
</div>

**Esta Guía de Implementación ha sido posible gracias a las atentas contribuciones de las siguientes personas:**
<br>
* César Galindo Viaux, HL7 Chile
* María José Villaroel, FONASA
* Roxana Mercado, FONASA