@Registro @Regression @ES
Feature: Registro
Registro exitoso de un alumno

  @Smoke @NoCandidate
  Scenario: Registro exitoso de un alumno Modificado
    Given que el docente titular ha accedido al formulario de registro de alumno
    When se completa el campo "Nombre" con "Martín Ruiz"
    And se completa el campo "DNI" con "37889945"
    And se completa el campo "Correo electrónico" con "martin.ruiz@ejemplo.com"
    And se selecciona "TDAH" como dificultad de aprendizaje
    Then se visualiza el mensaje "Alumno registrado exitosamente"

  @Smoke @NoCandidate    
  Scenario: Registro exitoso de un alumno
    Given que el docente titular ha accedido al formulario de registro de alumno
    When se completa el campo "Nombre" con "Martín Ruiz"
    And se completa el campo "DNI" con "37889945"
    And se completa el campo "Correo electrónico" con "martin.ruiz@ejemplo.com"
    And se selecciona "TDAH" como dificultad de aprendizaje
    Then se visualiza el mensaje "Alumno registrado exitosamente"

  @Smoke @Candidate     
  Scenario: Error en el registro por DNI inválido
    Given que el docente titular ha accedido al formulario de registro de alumno
    When se completa el campo "Nombre" con "Martín Ruiz"
    And se completa el campo "DNI" con "123"
    And se completa el campo "Correo electrónico" con "martin.ruiz@ejemplo.com"
    And se selecciona "TDAH" como dificultad de aprendizaje
    Then se visualiza el mensaje de error "DNI inválido, debe contener 8 dígitos"
   
  @Candidate    
  Scenario: Error en el registro por campos vacíos
    Given que el docente titular ha accedido al formulario de registro de alumno
    When se deja el campo "Nombre" vacío
    And se deja el campo "DNI" vacío
    And se deja el campo "Correo electrónico" vacío
    And no se selecciona ninguna dificultad de aprendizaje
    Then se visualiza el mensaje de error "Todos los campos son obligatorios"  
    