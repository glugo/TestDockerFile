# Imagen base de FIS con agente Hawkular
FROM docker-registry.novaltepre.corp/openshift/fis-java-openshift-hawkular:2.0

LABEL author="TOI en WOM"

# Definir un usuario con permisos de escritura en la carpeta de despliegue
USER jboss

# Agregar el binario desde el contexto de compilación de la imagen
ADD binary.jar /deployments/

# Agregar prueto de exposición de servicio SOAP
EXPOSE 8888

# Volver al usuario utilizado por OCP
USER 185
