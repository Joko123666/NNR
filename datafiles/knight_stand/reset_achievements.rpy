init python:
    class ResetAchievements(Action):
        def __call__(self):
            persistent.achivm_finish = False
            persistent.achivm_endls_locked = False
            persistent.achivm_endls_shop_denied = False
            persistent.achivm_endls_shop_ruin = False
            persistent.achivm_endls_shop_eatcum = False
            persistent.achivm_endls_shop_analcum = False
            persistent.achivm_endls_shop_howyoulike = False
            persistent.achivm_endls_shop_randomend = False
            persistent.achivm_endls_shop_analorgasm = False
            persistent.achivm_oral100 = False
            persistent.achivm_bodywriting100 = False
            persistent.achivm_dressup100 = False
            persistent.achivm_fingering100 = False
            persistent.achivm_hypno100 = False
            persistent.achivm_edging100 = False
            persistent.achivm_piss100 = False
            persistent.achivm_makeup100 = False
            persistent.achivm_bondage100 = False
            persistent.achivm_humiliation100 = False
            persistent.achivm_exposure100 = False
            persistent.achivm_chastity100 = False
            persistent.achivm_pain100 = False
            persistent.achivm_anal100 = False
            persistent.achivm_plug100 = False
            persistent.achivm_cum100 = False

            renpy.show_screen("msg", "Done! All the achievements have been reset!")

            renpy.restart_interaction()
