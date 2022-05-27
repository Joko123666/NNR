init python:
    class ResetStats(Action):
        def __call__(self):
            persistent.stat_compltasks = 0
            persistent.stat_faildtasks = 0
            persistent.stat_endls_gameslost = 0
            persistent.stat_endls_gamescompl = 0
            persistent.stat_strtfnsh_gamescompl = 0
            persistent.stat_compltasks_oral = 0
            persistent.stat_compltasks_bodywriting = 0
            persistent.stat_compltasks_dressup = 0
            persistent.stat_compltasks_fingering = 0
            persistent.stat_compltasks_hypno = 0
            persistent.stat_compltasks_edging = 0
            persistent.stat_compltasks_piss = 0
            persistent.stat_compltasks_makeup = 0
            persistent.stat_compltasks_bondage = 0
            persistent.stat_compltasks_humiliation = 0
            persistent.stat_compltasks_exposure = 0
            persistent.stat_compltasks_chastity = 0
            persistent.stat_compltasks_pain = 0
            persistent.stat_compltasks_anal = 0
            persistent.stat_compltasks_plug = 0
            persistent.stat_compltasks_cum = 0
            persistent.stat_compltasks_couple = 0

            renpy.show_screen("msg", "Done! All the stats have been reset!")

            renpy.restart_interaction()
