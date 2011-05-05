# language: es
Característica: Topicos y Detalles
  Para entender mas sobre los topicos
  Los usuarios deben verlos en una lista con sus detalles

  Background: Asegurarse que el topico existe
    Dado que estoy en topicos
    Y hago click en "New Topic"
    Y completo "Titulo" con "Rails Fixtures"
    Y completo  "Descripcion" con "Rails es genial"
    Y pulso "Create"

  Escenario: Visualizando un topico en detalle
    Cuando visito la página topicos
    Y hago click en "Rails Fixtures"
    Entonces debo ver "Rails Fixtures"
    Y no deberia ver "New Topico"

  Escenario: Eliminando un topico
    Cuando visito la página topicos
    Y hago click en "Delete"
    Entonces no debo ver "Rails Fixtures"
    Y deberia ver "New Topico"