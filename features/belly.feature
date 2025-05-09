# language: es

Característica: Característica del estómago
  @spanish
  Escenario: comer muchos pepinos y gruñir
    Dado que he comido 42 pepinos
    Cuando espero 2 horas
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: comer pocos pepinos y no gruñir
    Dado que he comido 10 pepinos
    Cuando espero 2 horas
    Entonces mi estómago no debería gruñir

  @spanish
  Escenario: comer muchos pepinos y esperar menos de una hora
    Dado que he comido 50 pepinos
    Cuando espero media hora
    Entonces mi estómago no debería gruñir

  @spanish
  Escenario: comer pepinos y esperar en minutos
    Dado que he comido 30 pepinos
    Cuando espero 90 minutos
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: comer pepinos y esperar en diferentes formatos
    Dado que he comido 25 pepinos
    Cuando espero "dos horas y treinta minutos"
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: comer mucho pepinos y gruñir
    Dado que he comido 30 pepinos
    Cuando espero 7200 segundos
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: comer poco pepinos y no gruñir
    Dado que he comido 10 pepinos
    Cuando espero 7200 segundos
    Entonces mi estómago no debería gruñir

  @spanish
  Escenario: comer pepinos, no gruñir y esperar en diferentes formatos
    Dado que he comido 20 pepinos
    Cuando espero "dos horas y cincuenta segundos"
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: comer pepinos, gruñir y esperar en diferentes formatos
    Dado que he comido 17 pepinos
    Cuando espero "20 minutos y 50 segundos"
    Entonces mi estómago no debería gruñir

  @spanish
  Escenario: comer pepinos, gruñir y esperar en diferentes formatos
    Dado que he comido 17 pepinos
    Cuando espero "dos horas, treinta minutos y veinte segundos"
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: comer pepinos, gruñir y esperar en diferentes formatos
    Dado que he comido  17.5 pepinos
    Cuando espero "una hora y treinta minutos"
    Entonces mi estómago debería gruñir

  @english
  Escenario: comer pepinos, gruñir y esperar usando horas en ingles
    Dado que he comido 20 pepinos
    Cuando espero "two hours and thirty minutes"
    Entonces mi estómago debería gruñir

  @english
  Escenario: comer pepinos, no gruñir y esperar usando horas en ingles
    Dado que he comido 7 pepinos
    Cuando espero "two hours, thirty minutes and fifty seconds"
    Entonces mi estómago no debería gruñir

  @english
  Escenario: comer pepinos, gruñir y esperar usando horas en ingles
    Dado que he comido 25 pepinos
    Cuando espero "1 hour and 50 seconds"
    Entonces mi estómago no debería gruñir
  
  @spanish
  Escenario: Comer pepinos y esperar un tiempo aleatorio
    Dado que he comido 25 pepinos
    Cuando espero un tiempo aleatorio entre 1 y 3 horas
    Entonces mi estómago debería gruñir