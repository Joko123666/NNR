label tasktodocheck_inf:
    label .roll:
        $ task_tmp = task.replace(" ", "").replace("-", "")
        $ tasktodo = renpy.random.randint(1,50)
        if getattr(store, "prevtasktodo_{:s}".format(task_tmp)) == tasktodo:
            jump .roll
        else:
            if not getattr(persistent, "t{:s}{:02d}".format(task_tmp, tasktodo)):
                jump .roll
            $ setattr(store, "prevtasktodo_{:s}".format(task_tmp), tasktodo)
            $ timr = getattr(persistent, "tmr{:s}{:02d}".format(task_tmp, tasktodo))
            $ bpm = getattr(persistent, "m{:s}{:02d}".format(task_tmp, tasktodo))
            $ tasktodo = getattr(persistent, "{:s}{:02d}".format(task_tmp, tasktodo))

    if mode_inf:
        jump aftertasktodocheckpl1_inf
    elif pl1roll:
        jump aftertasktodocheckpl1
    elif pl2roll:
        jump aftertasktodocheckpl2
    else:
        call screen msg("Houston, we have a problem!", called=True)
        return
