default prevtasktodo_oral = 0
default prevtasktodo_bodywriting = 0
default prevtasktodo_dressup = 0
default prevtasktodo_fingering = 0
default prevtasktodo_hypno = 0
default prevtasktodo_edging = 0
default prevtasktodo_piss = 0
default prevtasktodo_makeup = 0
default prevtasktodo_bondage = 0
default prevtasktodo_humiliation = 0
default prevtasktodo_exposure = 0
default prevtasktodo_chastity = 0
default prevtasktodo_pain = 0
default prevtasktodo_anal = 0
default prevtasktodo_plug = 0
default prevtasktodo_cum = 0
default prevtasktodo_couple = 0

init python:
    from tasks import default_tasks as default_tasks

    for k, v in default_tasks.iteritems():
        if not getattr(persistent, k):
            setattr(persistent, k, v)
