import random
from behave import given, when, then, register_type
import re

def number_validator(number):
    try:
        validated_number = float(number)
        return validated_number
    except ValueError:
        print(f"La cantidad de '{number}' pepinos no es valida")

register_type(Number = number_validator)

# Función para convertir palabras numéricas a números
def convertir_palabra_a_numero(palabra):
    try:
        return int(palabra)
    except ValueError:
        numeros = {
            # Numeros en español
            "cero": 0, "uno": 1, "una":1, "dos": 2, "tres": 3, "cuatro": 4, "cinco": 5,
            "seis": 6, "siete": 7, "ocho": 8, "nueve": 9, "diez": 10, "once": 11,
            "doce": 12, "trece": 13, "catorce": 14, "quince": 15, "dieciséis": 16,
            "diecisiete":17, "dieciocho":18, "diecinueve":19, "veinte":20,
            "treinta": 30, "cuarenta":40, "cincuenta":50, "sesenta":60, "setenta":70,
            "ochenta":80, "noventa":90, "media": 0.5,
            # Numeros en ingles
            "zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5,
            "six": 6, "seven": 7, "eight": 8, "nine": 9, "ten": 10, "eleven": 11,
            "twelve": 12, "thirteen": 13, "fourteen": 14, "fifteen": 15, "sixteen": 16,
            "seventeen": 17, "eighteen": 18, "nineteen": 19, "twenty": 20,
            "thirty": 30, "forty": 40, "fifty": 50, "sixty": 60, "seventy": 70,
            "eighty": 80, "ninety": 90, "half": 0.5
        }
        return numeros.get(palabra.lower(), 0)
    

def range_time_description(time_description):
    random_time_description = time_description.strip().lower()
    pattern = re.compile(r'(?:un tiempo aleatorio )?entre\s+(\w+)\s+(?:y|and)\s+(\w+)(?:\s+(?:horas?|hours?))?')
    match = pattern.match(random_time_description)
    if match:
        lower_word = match.group(1) or "0"
        higher_word = match.group(2) or "0"
        lower = convertir_palabra_a_numero(lower_word)
        higher = convertir_palabra_a_numero(higher_word)

        random_time_hours = random.uniform(lower, higher)

        return random_time_hours
    else:
        raise ValueError(f"No se pudo interpretar el rango de tiempo: {random_time_description}")


@given('que he comido {cukes:Number} pepinos')
def step_given_eaten_cukes(context, cukes):
    context.belly.comer(cukes)

@when('espero {time_description}')
def step_when_wait_time_description(context, time_description):
    if 'entre' in time_description:
        total_time_in_hours = range_time_description(time_description)
    else:
        time_description = time_description.strip('"').lower()
        time_description = time_description.replace(',', ' ')
        time_description = time_description.replace('y', ' ')
        time_description = time_description.replace('and', ' ')
        time_description = time_description.strip()

        # Manejar casos especiales como 'media hora'
        if time_description == 'media hora' or time_description == 'half an hour':
            total_time_in_hours = 0.5
        else:
            # Expresión regular para extraer horas y minutos
            pattern = re.compile(r'(?:(\w+)\s*(?:horas?|hours?))?\s*(?:(\w+)\s*(?:minutos?|minutes?))?\s*(?:(\w+)\s*(?:segundos?|seconds?))?')
            match = pattern.match(time_description)

            if match:
                hours_word = match.group(1) or "0"
                minutes_word = match.group(2) or "0"
                seconds_word = match.group(3) or "0"

                hours = convertir_palabra_a_numero(hours_word)
                minutes = convertir_palabra_a_numero(minutes_word)
                seconds = convertir_palabra_a_numero(seconds_word)

                total_time_in_hours = hours + (minutes / 60) + (seconds / 3600)
            else:
                raise ValueError(f"No se pudo interpretar la descripción del tiempo: {time_description}")

    context.belly.esperar(total_time_in_hours)

@then('mi estómago debería gruñir')
def step_then_belly_should_growl(context):
    assert context.belly.esta_gruñendo(), "Se esperaba que el estómago gruñera, pero no lo hizo."

@then('mi estómago no debería gruñir')
def step_then_belly_should_not_growl(context):
    assert not context.belly.esta_gruñendo(), "Se esperaba que el estómago no gruñera, pero lo hizo."

