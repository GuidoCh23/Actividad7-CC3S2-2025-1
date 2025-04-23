import pytest
from features.steps.belly_steps import step_when_wait_time_description
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