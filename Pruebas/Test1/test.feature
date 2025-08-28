@Registro @Regression @ES
Feature: Registro
Registro exitoso de un alumno

  @Smoke @NoCandidate
  Scenario: Registro exitoso de un alumno
    Given que el docente titular ha accedido al formulario de registro de alumno
    When se completa el campo "Nombre" con "Martín Ruiz"
    And se completa el campo "DNI" con "37889945"
    And se completa el campo "Correo electrónico" con "martin.ruiz@ejemplo.com"
    And se selecciona "TDAH" como dificultad de aprendizaje
    Then se visualiza el mensaje "Alumno registrado exitosamente"

Scenario: Registro exitoso de un alumno
  Given que el docente titular ha accedido al formulario de registro de alumno
  When se completa el campo "Nombre" con "Martín Ruiz"
  And se completa el campo "DNI" con "37889945"
  And se completa el campo "Correo electrónico" con "martin.ruiz@ejemplo.com"
  And se selecciona "TDAH" como dificultad de aprendizaje
  Then se visualiza el mensaje "Alumno registrado exitosamente"
  
  Scenario: Error en el registro por datos inválidos
  Given que el docente titular ha accedido al formulario de registro de alumno
  When se completa el campo "Nombre" con "Martín Ruiz"
  And se completa el campo "DNI" con "ABC12345"
  And se completa el campo "Correo electrónico" con "martin.ruiz@ejemplo.com"
  And se selecciona "TDAH" como dificultad de aprendizaje
  Then se visualiza el mensaje "Error: DNI inválido"