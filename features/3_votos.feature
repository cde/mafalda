#language: es
Característica: Votos
  Para determinar que discurso dar
  Los usuarios deben votar por sus favoritos topicos.

  Background: Asegurarse que el topico existe
    Dado que estoy en topicos
    Y hago click en "New Topic"
    Y completo "Titulo" con "Rails Fixtures"
    Y completo  "Descripcion" con "Rails es genial"
    Y pulso "Create"

  Escenario: Viendo los votos
    Cuando visito la página topicos
    Entonces deberia ver  "0 votos"

  Escenario: Votando un topico
    Cuando visito la página topicos
    Y hago click en "+1"
    Entonces deberia ver "1 vote"