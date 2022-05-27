label checkrollpl1:
    $ task = getattr(store, "cell{:03d}".format(pl1))
    if mode_inf:
        jump afterrollcheckpl1_inf
    jump afterrollcheckpl1

label checkrollpl2:
    $ task = getattr(store, "cell{:03d}".format(pl2))
    jump afterrollcheckpl2
