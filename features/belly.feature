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
    Cuando espero un tiempo aleatorio entre 2 y 3 horas
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: Comer 1000 pepinos y esperar 10 aleatorio
    Dado que he comido 1000 pepinos
    Cuando espero 10 horas
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: Manejar tiempos complejos
    Dado que he comido 50 pepinos
    Cuando espero "1 hora, 30 minutos y 45 segundos"
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: Manejar tiempos complejos
    Dado que he comido 1000 pepinos
    Cuando espero "1 hora, 29 minutos y 70 segundos"
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: Comer muchos pepinos y esperar el tiempo suficiente
    Dado que he comido 15 pepinos
    Cuando espero 2 horas
    Entonces mi estómago debería gruñir  

  @spanish
  Escenario: Comer suficientes pepinos y esperar el tiempo adecuado
    Dado que he comido 20 pepinos
    Cuando espero 2 horas
    Entonces mi estómago debería gruñir

  @spanish
  Escenario: Comer pocos pepinos y no esperar suficiente tiempo
    Dado que he comido 5 pepinos
    Cuando espero 1 hora
    Entonces mi estómago no debería gruñir

  @spanish
  Escenario: Saber cuántos pepinos he comido
    Dado que he comido 15 pepinos
    Cuando espero 2 horas
    Entonces mi estómago debería gruñir