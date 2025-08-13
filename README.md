# PetStore
Automatización services rest crear user, update, delete

EJERCICIO: Pruebas de API en PetStore con Karate

Este proyecto contiene un conjunto de pruebas automatizadas para el flujo completo de un usuario (CRUD) en la API de PetStore, utilizando el framework de automatización Karate.

---

INSTRUCCIONES DE EJECUCIÓN

1.  Requisitos
    - Java Development Kit (JDK)
    - Gradle
    - Un IDE de desarrollo (como IntelliJ IDEA o Visual Studio Code)

2.  Estructura del Proyecto
    - `src/test/java/PetStoreRunner.java`: Archivo de configuración principal para ejecutar los tests de Karate con JUnit 5.
    - `src/test/java/resources/petstore.feature`: Contiene el test Gherkin con el flujo completo (CRUD).
    - `src/test/java/resources/user.json`: Archivo con los datos de entrada para la creación del usuario.
    - `build.gradle`: Archivo de configuración de Gradle para gestionar las dependencias.

3.  Instrucciones para la ejecución
    - Asegúrate de estar en la carpeta raíz del proyecto.
    - Ejecuta el siguiente comando en la terminal para correr los tests:
      
      ./gradlew test
      
    - Los resultados del test se mostrarán en la terminal y se generará un reporte HTML en la carpeta `build/karate-reports`.
