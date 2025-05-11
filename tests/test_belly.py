import pytest
from features.steps.belly_steps import step_when_wait_time_description, step_given_eaten_cukes
from src.belly import Belly

class Context:
    def __init__(self):
        pass

@pytest.mark.parametrize(
        "input_description, expected",
        [
            ("1 hora", 1),
            ("3 horas, 30 minutos y 3600 segundos", 4.5),
            ("2 horas y 30 minutos", 2.5),
            ("7200 segundos", 2),
            ("dos horas", 2),
            ("tres horas, treinta minutos y sesenta segundos", 3.5 + 60/3600),
            ("sesenta segundos", 60/3600),
            ("una hora y 30 minutos", 1.5)
        ]
)
def test_description_parsing(input_description, expected):
    context = Context()
    context.belly = Belly()
    step_when_wait_time_description(context=context, time_description=input_description)
    assert context.belly.tiempo_esperado == expected


@pytest.mark.parametrize(
        "input_eat_cucumber, expected",
        [
            (5.5, 5.5),
            (6.5, 6.5),
            (10.5, 10.5),
            (0.5, 0.5)
        ]
)
def test_eat_fractional_cucumber(input_eat_cucumber, expected):
    context = Context()
    context.belly = Belly()
    step_given_eaten_cukes(context=context, cukes=input_eat_cucumber)
    assert context.belly.pepinos_comidos == expected


@pytest.mark.parametrize(
        "input_eat_negative_cucumber, expected",
        [
            (-5, "No se puede comer cantidades negativas de pepinos"),
            (-0.5, "No se puede comer cantidades negativas de pepinos"),
            (-10, "No se puede comer cantidades negativas de pepinos")
        ]
)
def test_eat_negative_cucumber(input_eat_negative_cucumber, expected):
    context = Context()
    context.belly = Belly()
    with pytest.raises(ValueError) as exc_info:
        step_given_eaten_cukes(context=context, cukes=input_eat_negative_cucumber)
    
    print(exc_info.value)
    #assert "No se puede comer cantidades negativas de pepinos" in str(exc_info.value)
    #assert expected in str(exc_info.value)
    assert str(exc_info.value) == expected


def test_estomago_gruñir_si_comido_muchos_pepinos():
    belly = Belly()
    belly.comer(15)
    belly.esperar(2)
    assert belly.esta_gruñendo() == True