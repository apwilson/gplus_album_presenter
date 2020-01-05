/// Author: luthien256@gmail.com

import 'dart:convert' as convert;
import 'dart:html' as html;
import 'dart:math' as math;

const String kAlbums = '''
[
    {
        "height": 3888, 
        "photos": [
            {
                "height": 3717, 
                "url": "https://lh3.googleusercontent.com/07tZ_gh_yazD6tm_BRgw7OWb9RH684cvXdaWTuM2gmbES2VG_7ERCz58QI0Hjqarl-52DdsuWM1ghr8p0hWfrF6t8ela3IYqZARYxjSSTch8GQehqcbiWZcEx5LWo-PdoMMB6RivGnY", 
                "width": 4956
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/LcMaojaI1IvS0dcW-eRlKh4OeKaFx9GTsQGxACMkAegNAw6WGBVFHa5umBvTsd0WKqHZgyi6EAGh-5k0kAqbh9rykCUZbWqsoILjPseDh9aVL23euHoEKV2qXkRm1ihLApRmmlknV3w", 
                "width": 4032
            }, 
            {
                "height": 2779, 
                "url": "https://lh3.googleusercontent.com/QVj2KA1dbsyrpEVdpzj-Pu7w3bvdgu62JosOn821vMMq9zYy3FMmRpjLktpsSdzFP9ThIry31R8Vhiyzm8v4eeWdWXp6PrOkZhlxTzKH4pGXbJRr8uPnc9eWvNq-HeUq_5NSPlO1n3M", 
                "width": 3498
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/dnt68lVzODsoGxC0xlYfIfTKFpAHD_U8Cavm73LP3j5TD7TGGXjtvp5YbhA-hr_-ekkuN-XoctdG5Fm2XTBZUQsev2IDnohUb3Q0VXLc6_qn7ZWCK6tPb_u02dYa2f7yScVG1JbyFQc", 
                "width": 5184
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/LRCQ4zzlZXl0trDFOXf7T9E0bHFt2ekvsiSLz2dfbZz_zfptMjhlKLarnMHBF1A02ghDZ8un_433SyQ4Pn2EPB-oQfT3IjqEajYE9NIHd8z_HZWDROINt07YcflkYygZEtgLFNqkrhA", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/vz5hhqM6x7GR4iMdzzg7lJPXAkVMSRDxqHrsO22085cYschPAgGhZFoD0p-TkupY2VP8PSNAB7xKsYygVd-89wC9Z4BUkaweXHhPfamNqWQIsOYBbrdNpG3kHco7bbIlkWtptk4lZ4w", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/vunFZAsMvwiuzgzrWK0m9S_feO2Yo0EcVdoTRnWQky1xA6HxsYEBiIKPA0HpximNm_4l6JYvBEMMBtsRHhpV-dsSfW3Ae0REupuJ3ESxyWEElvuJ8mkooPctDTeRQTN-ahYrHMWhiKg", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/l66J_JQOkhcY2VFWB2HH9DwH9CaL7mTpjxus5MEqvnAZxGpnG4VctRzMm18BV07_Jld-PeGWpOc0AE6F1b0mqRdWLIOisJMkut2IUGzb0uR_Jwtk0JKuEsKUqPnq-h4zw3dCKl-Ud7g", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/PEQHfVilswuXNu1P-3AA2BaZqVclbqKwR9L3LPHWRjaFIiRtRNpBBlsCk-s7r6tbVEkik3ZLNZkFBZeOO1FIfiB5Ofrnxq9WXpRCPSuWeIcp0G0Qa3wLSEvvrJh9IpJf9wIZEFWVYJc", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/18FrcYjWL8HZ_gW_0LMi5_ljaQP8qYGP7LOB_7DVGuS6fB0BO5fvhW326_S3k5e46OlD_Xd64rxmqIHVl6u-5OorK3P29ftyo60vodhSPS7b6WXeDeEhMTDdYn0vimzTBS1TGE8yQPI", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/7-_95Jv1_OfbeZWj7aWgoKcEMuKgXIOS88spoyw2Ou_nesOIFCjl1OaoOczuFCxUnrVlCBnzCHb8koBBaUm8DHT4Jd3a06EGKu_c1cw7_z0ukSu8dhKemZms2r57SVV5asbyt_KUfj4", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/WpSk_ZuYuOQNDMmlXVCM_Jf91bi30vz_7Mhfm8mInxrEGP2HOtD0LiqjAu8uHE199EKCGFbXU-06J-piSxM5WT5el19bvjboOl58rq-8LbpdYyvOO_BnpiCIClnCpddvEEzv5uI7smU", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/8qiBdYL6_dAEliYs1P9A2gr_Tzqv62MGvwPJH_Q83g5NRzDopwO8_eNfK9bbthoW8J1n7hyiD6ytiEN3Rdr2uhsrLeI6b9G4vq9FjPowK527yBI_R5dH9L8cA2An-QQbRvIKT34tZAg", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/RnQ0fNMjV2Eaajm8wFDNyGQppn1mQj29Y_DB9uur7HHuzcqEbnFD1AwyZjsMyTrSQ3gAAbLwID9xH5X71z4XnqFPrEZYJ_eNGK-roK3f0j6ujTbsO3vkGjCcK6PY23UBbhAfn9U4wKc", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/1RuJRRTJwrKpjV2fcOm2uqUayViPjwYGI3jvyAAcX6fKaHDDwhKgJuo_AMsNHm0WVQEWaCkt6Tyxq1MkKjrhlF0mwSh0qA6nhoH_DxULxJbAxQsErqTuJvDRJrseKrjY-MYV4zc2rTE", 
                "width": 4032
            }, 
            {
                "height": 2542, 
                "url": "https://lh3.googleusercontent.com/9l6z1JNJb2sqDj9bpxNWgdfy4t-66WkPJOYog-42XY_XAqseJqJ8zFHkjVuGy3uwfhePZPiqpwjTBgIqA9KOl1SsDnJQr97rjDtsObbFVI_EEj5jmFzj2zfPoghyIxrFWZGzj5pr6Do", 
                "width": 6292
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/tVDMA7uj1tGi19i7m2Tvk3_Y7yYqCjRsIWHuoy3ZS4S7ISBp7_se6qM7rBh9Bq45N0SjtyBVWWQC010xDbzIaFZ-QBJxDu2NwX6XE--fqlzgKahKmKuDqwtvGjHMhfnhSGiMstHLxPU", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/WcWw4BpOkOnCuOHdypYMrncrm4ZbK00VC4WcinpTQNPoJZN6Y2a4xUPxfr2UpLntibPPOiFHL2T6FOtsXmiRg4H7biURiEEO3LSjbZuSEFaJP7FJzPRXbx4N1B8ERH_Ri6kQ0083sC0", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/uEQcC7caYBbh-7e9B-UKaMcgW0oWoziNuaHVRSQkAQZCjslOiof3o2_Xf-qt90sWAbChG5HaJowWpnfF4HV8_bNRh3rjtlgWJkcHf3WCiLrZXqs1xgBEn8CMtId0xm8dPpruGAdBfvA", 
                "width": 4799
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/Ta6igFaK9zkege_4q5_HMI5ubpo_hvQD8TfKgN9ik79uuUSaQ6qeQUKoa2zA49JLAxkChTxpi4JjeEbeouZbUDh_LdQTThe4uWYd0FL1D9hpQEHl8NTdIURXCvTqg0g_Jhpno9DfZVo", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/vHEozeR7HQH16U87klJ78zlamRdweSdrPn2I1JZynQQGSAPw9u6aSuKRz2_tT6tNI-XXn3J6kNzuKIsPn72Eyu68phcS2jQvF57aTkBhzilnNihHPnl1NMb5fXPljaJdCKHcdQ6jeRc", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/kD3LT7OTMNgH_ILo_J0rrqNOCP-W-eWd7315y0y21shTi-9ApTtCaVSEgdwJ-q_htj10b2EeZ7osAdLBPKPx2uRTJRG-Eeqk5j_5IHamwtO2F37x9KBEwBZjTUcKmgNYr2RVv-ywZak", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/Tsj7PxONRC7voX1YfpFnyzFj-6Wk6Hp93q_-5ImFJDWcmkntwjCWpUWNXXVMSuFb6hGJPIM-1qgvlRTFrRNH0e9T6xLfpMOZhfs94UZKxFXxOM9PDNK0o_sseR80vFokvW4cT_g3NYw", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/RVnxSeIM8iB5BuNAsOCjPcjt3vhByB_d1J1Ldm1k5Kmg79EFmotdZl-iXdYHPSDR0_VfQqko_yQShjJI7nSNVmBKiKKTKM6dRhi_wC73BWwFf5q6Ad9clTFMqt9weI6pUaNolUQHdRM", 
                "width": 5184
            }, 
            {
                "height": 2826, 
                "url": "https://lh3.googleusercontent.com/D5Xv-T7XDPsH7iYOaib1k_6mzr3IIiC9baxtYGHP4IuIlZsWcHwA0dTbV1_6pHaCoONaZEDU4Vi5dPcC2dWztkUr1hB5NRh9eJaIHEZCkPOtMD-AbrUfyfeslbQ6a4i4k968z7VrI-Y", 
                "width": 3024
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/kf6sm6WSwuf6w-XCyhU5gok_RlyCcwkLO5AlLWFJkTE0fxSDznYWSNLtaa1r4jP0hfWIHMrBcziQWRmmZOCLWXtLqE7EgIVggwKIG1ITqwbcHh43IcRqm5UUWJt_gL-GixusgHz8hLI", 
                "width": 3244
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/FQpzUcP6YVnX10cxVjKiqR23xNgVN5jTf1CNRV9XClBd_1i8qgTlpktqt6SJniANDOOb80lT0cZA0PJMdZYqWyUJ1FNq6vi0NQjg4GhGbUt4WkBSmDH-TOqPyAMJLcZRMVtsqSEj9V0", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/EMTCGfP1fDqHcHxVHGDZQApSEY9_wIq0Em27vEE6Q1XSnNEicxAZdWaXX1kmssoqcWVBAtTfWbEbHfG9JzGo_PBVE77Z4quF98Y_n32lAHenNckmVm2UCDw57ZGSJE1OOQVctLoEuVQ", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/Cog2Z8swI2_niB-o-Lb-EfjPb9SVAGwRZiCZkPnvI6xDvdPjRchlYRZAuhFRZ-Po8GOJoOU9AtJmVtuCGbJMr-QHXKBN6SwJ3QN8sr93YIKUzzPiUdE9XfvhTAG6SOLoxQMiBMAGDzo", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/lq1kfktvBGneIMrODxm10ef_HS-J8vM5cEtKJFyi3Twr0V6V9mVUpGmblAGUzVNPnVbN8OqfSyB7rAz5Q4m21Mb5_atPSzVIAbCPC1AnbsQQTDqQkwN7zgqMEHxUsqxqjbFPvR7ZFgw", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/ZPlOyn2a69Q921qcI-2cYOT7au4gAH5nNQm1UGsPIatVM4NgPzDKPFMA3S8C7KtLOsm1JhJeB9kCawTky-vHTKMUprkL926iBvH66EU3Qs0k8a1wKft-zqiUcnhNy2eK8pu_de1Q6KA", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/kM4l8Y1weSfLLEFXRZnlD-G6G7ul5ra03GI1TMSzy9qB9PIseML38fLHI8pzCH2NeNZeBzPX0EwPtGLotkapaHP5-OFkI3XLn0c2yyJOIVMqIvcT3KKJ1YlSA2Ans_1Cl42Hr1y54PM", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/o9UQBO3VSWqb4WrOaSEthFrY1j9U4QCQWlqS4bRfEJDkT73UGIwgW0lG5fYhPf13zuNlOYRWnYE1EbPVdt6ZLD0EUK00woQnSbJMyNeQ-uljpj4L2lvBnF39isNgA-wl1d0xV8KITYE", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/O80flArTC-TPlO4PqFxstrCgzBev9MMAILD8sqyd9RJsJX6Khp-QoKehAY3chUBtdveuD1siJU09GCkv2Au_N3agldqbyqsXf6woR6SQq1Uh77W2clpWwz-wyfA3WnzfRRoyIjst5ts", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/Zi8PZJ3TQUWGU4O45pgWCensNeb54cM-KS5pIfc8X5ednte0Nv5cIo54r1dd8UpE7U8BViOXDbiGUpVj1VC-WJbzVdzYEMACUxt0b6Fw-N1fKkhsBb0JqV8UFSu3uCAftI2ag3hMHGY", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/0CoJ0w_xapRLJpUNYcP9JSsaui642JJrpbLC1J51Kv-RO4i3LMdflXaiQxU3C8m4V6cBRFePyTRTkPgf98ZXr6RmtAjoQbrH2CyZchIYfwNL73NT98-vUVRS5YyE2CfmHRIfEu4On8g", 
                "width": 5184
            }, 
            {
                "height": 3660, 
                "url": "https://lh3.googleusercontent.com/yO1FavcrpNX0Xv3OPWyD5T5psS2OU551nPPU7n4Dt8oLka43vyh3HXVRBou1okET2FCoPv1LFbxt5nNfIo_U8TKiXr8YIF-MIDy-ofiBMMqHaiD7AP-v38-96gE-D9egnOfZk5tKBig", 
                "width": 4619
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/SWRWC-ftOHSVCyJfsIayEG4-WbFKst9qMb33b6Nwx-bMuj7f3CObc-isLKcT7n1EByW5A2ApbImp4kcrA4SyCQuU_uh4onmuSwzLTqeYUN2F57bNZyRr4yusNPBFbS7oP9n03-bOVcY", 
                "width": 5184
            }, 
            {
                "height": 3186, 
                "url": "https://lh3.googleusercontent.com/jubDrQ1-sShPnwVdJbqnFaqe_cJQrCWzXKtNb9Os7K_uP4xoFHxz4rCSZ1tlL8eGRleCP5yCg60PU-xgA9ujSWYTg5W3i8i5M6OoWzccavGuqy7ND5Rq8344jeAX_-u9CO89_oPYSdE", 
                "width": 3869
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/GNOrYiNaidfEqApDHxgkdcgDOCdTogSir1mdzZL_fKvJ20zyoGnYT3PDkQksP1LFOp2KoCjkVTXxKiF0NbCwo2VaaUuzaUEgLOPiYPKS8NSF2qdFkcLuNKIlmZbkJ9JfRnrR6rxwiYo", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/9qR3zCF5qytrenlbE_89r94r_B6RUb05R8An77oYaw_HilTAJ9NFwbLNPSvTs9R9eT-_CcijLXNPZ4YKTstIECUv98FiIBm7lyxslLWKCLthbwWXkE8ATJ9WjxVTF3463ZdjgWnZn84", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/y2iuOFoMemHL4Y5CGBpx4VKRmHnbmNLe8DLh0OZTGJCyHYZEXgtAmPlwFM68mU16pzkFKS_QdAWJfjGuC1JAjgZwr4zYtuJH_1ojiovPYZJ7JAoYVxot6RVA2K_96cStpC74m1RnwbA", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/zdBjC2whNdl1m77esPID-p22z5rtft9_JsZCuP-bmE_66mceeJpimjpaJJDpi59nXuobf3TtSb-JtuHG1aei1G86WKzwS0cIEKm1x5dQvbM5GUqAw5LR9NY4Y6BSZCKl4xcW4FPvSMA", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/GvTJ3CIvkCGdDNPV_tMOYOqmMevQ9tzMI_2IzSSAEXVr0tCpF_uoLKyC0hj7ldXScMBe5ej8kKm51MfsbojhSUBlVyZBYBxPXZzTeJVjflVU0-UWcXvercGeB8XY1XQ1CP0Z2xNjKvQ", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/34oRRC4pnHKmMvlgBxTggtRqRPfIRK93bXby0MBc7VNjZSG5oUXgKaqSVQ88shN4zAFDf00chN4avnFTRiTFdgeiJtYjTTtLEGLAzLwz_KXe7hK97XZ1tJEMNmO1Y2qpJGgSDEOUFSU", 
                "width": 5184
            }, 
            {
                "height": 2997, 
                "url": "https://lh3.googleusercontent.com/_FzNArXDxMuAQyE-dFGuTys_Sm1Kf1J82cBSZ9ysuajh6AUTxbOOiw0R92HhFB9o3J1U9W_tlfxKPlTYQomjWqqVIjqHeR3ytsKy_qupmNYuDlvWZgYmghhFBQEicuIpyD3vh8Wzgm0", 
                "width": 4868
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/_FZvF7ldma81CEAPekwrArFLJBgORkNUi4a9Vf2jqvL5Z3J8VZCg6mHPUekybh5NCjGIJcXZhZi_kWvL9Er5KXYuUEAYT6UmDvYTSNBJ69YRj2iN0UOIhtHceLc-52rEX1sVKbwg0G8", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/lRoCd6AYVutN6QvTLjcMKvCedu4AdhrGun9bPxht7rjq1WE42wxzKSBv3M6YdJowVADgrmVRtwBvtBDQwdx-j6ZUYhZ7lrm-vpj2KrMJbCuLeHA29KPihCpBTRxKxXvn0MFmBgo_6JE", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/s5eMsA-R1hwQBtYy0Tqodc7fenF-B55s3NisChowhUHzCFWv9SXuBGJgCOMMX34F5-0670JRlew_l_yoLXIeYDDnlrzc5_BQ3OssNB46IZZB7zjVxxYcCcNxR3TW8wO1cpwKCdkNUN4", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/nc7sU2HKrMKnepL77wehVnui14k9fG_Cg26q9xFFcxPk_TKtEcE844Ez8ENDTVclZ-goc__hbBsSK_wQxFiL4Xh1FNDTb9ud_9X6X1x5rjTVt19bE5VaCb6HLsJcMUdGpJ1XVlMweb8", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/xV3RQ1HwqokoCUknAi1YL9CTzbrF3Az9OUPALn_P77NlbWGj0wetJRFY4pv7wQNmnZ_fwW2RCJXaHcbvzI05IWQFffoHuAPApEAKqBvja1Wy3CamAT97foTLUJBTSVErkByZLTHGyQA", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/oqqTusZ-rVG7MRsPsS3b_p06HvqpENH_M8w31U4e_GGysL6wkigs7KXRoPu3ColbiGHXaB7ChwTSBlYA5A6R9fGObbWhDZbOwcPojR6iRyOMZaFu93MIB8nK7DlLWzO0l4Kd4_4Gbnw", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/LiWFxM83_PGoe4t4b1p7t5deEul5Gu5LlRk5aJbSbHxLIriNyFjJSDj9AbjzMg_fxiOpnUZrZpbm5gErJuepbyILL4P6SLwIwWBKpNRITtHmPt8EBWzV81DHTfNLlUeMBtOFlnoleoI", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/YEXA5YQFXUNRY2posnynd1UfKDrtcUJDolkBLEK19oAnnVPfnY7V84CKO6j9qdi2-yOTO0xYhfjsYpKKAxN9LOXtP-OhhvxdymG4gsXmd3wquYF1BYr3_4TbQA_W2-GyU6pg1rWVDo8", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/iS8ttw1Ek7XoY0rsJiN0Rg2oKl02Rpt6eKTMhxX969vENqmjmcy0C2aAJ1FcSxWo2t3foRjK0QJhf3fCinagI6leGMiKYRTAPkRXm9eMke8HsPcWQKv24_0DYnREUnJydLzFzGxsgIQ", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/0fEv3MwYJnYdZpAiShkqwFOkvamhTUNLyGbf7a10KDc0YNL0_2PMgMPh7GybX5d775XugcJUnZ0Y-oj_2mxgF3UDC12GK_OqGtys9nD94U5BPeo4AvUtJPFpghrYLDlhsONNXBjmGqo", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/px2tis_cy9bWCg19VtDUyveOmQpjRAm8vV-Bt2KMxmAku3o4pqRxft8k-d_u2qzZOXoUBmDQAHt28kGu3P4-F18wiWrCVTWD_lSTw0vNirPRMN4CxhamRMJId8MVgO_BALXR2uzl7w8", 
                "width": 5184
            }, 
            {
                "height": 3041, 
                "url": "https://lh3.googleusercontent.com/mKAymFOz599ED6Q0Sb0Kdkz-Wc1ctkj6JRVQimPjlvW3T-hf4D6Kbhen1FdImlMYH4W_GwOXq1ZVBk9JB_Sjn45jEPozewimzUeqsD78l6PnTklq_F2sRMy8JYr6X2k0U7VUHXVyFb0", 
                "width": 5004
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/D1a0SvXYkwI7N6FyHFhdlNM9Xqbp5Aq-jiOskCd4iR62arpl6wJtfJG-_PzBp5gCcCxJb_0_qLJ1y0TuEkGSEA2yN7Dj2v8pnZhxRBedbb1N9TXRiByrsPr0FBNmPPEwim0qQtUE72s", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/9nGHqxnLplms1wxsHocZ6n8u7mn64lrDD2oXjBhgtR9MJBKssHJFWXIZcYB2oOS4uL8yRletLRTcphDiQQabmbxwCoZwlblLgmElnMBn6qpbhlgfK_Ne8acYtKVcNL1OOQPtmX5flKw", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/jcYvqnLYxzrnPVQJAaTGnul8H0WuUzsTpfMwNbJLhSKafzODX0c9Lcc9GkDBLCBPJSRE1qWDi9MCR4nASBnlI5BF8E_T14kVFyMqCwi-DqMuEHDO-a3WRKJil6-Gdv23W6eS7Pfx_JI", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/7-m2OzAZU08H0ZsN8LeJoElFx1EEb3ymAAIQqDvvFgUBRRNVm-34onphICWPFLfBwxdUCqpkS7jkhOk1VHjX48QN1HkbeZWJo9OguI6X3muBm-Ca13eVdWdrrNoqxZDGCxARZMhNba0", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/f8otPdN8PMx_WG-QvX-YeEqOF77_BASEnvvjq2lyFqHcnhLTFIpa5ONBOnyFtSoyIqabT4whVINztS71pO_FDkQIX4SRr8Jj3LhaEnbAITLwj8B6tt5UhVGJsxvToUsPOdIImZVCrAc", 
                "width": 5184
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/vrjA6R_9NCuZ0fQEpECPxb5PGaiO7_BKeJogIhK3Nh468gmRfMbQRksr6b1oNsnWmvRpCZtdOjxB-RAnmnXJbMkh5eySsSNhQsJebtoQnvmREvTUklaGzAWWCaXnyGC55h_8h_ecBOM", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/9Q5IjrIEDythUbyH2Cnf-UQMWNnr8QlTA8jDf8JgN1NKL891KLj6aEy-5opX6G5RCDTZ0HFGRrx-U31jzKf9V6f6tJcTsp_-r2-5ChIZp29tTpxyK-bXVDYz2IJatW8pXFLljVvrRMI", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/e5XaJ27w0wfR-FAgI3tg-fuwpjsRO1Gzz0BUrdbbfILEm-Cxo1fXx7jwwfT8MYhtQ7zdctbqk4TqzmqAko8vpokCzqdMJciPUYixM5WHy3xbpOuVZ0R1s9drA66HTHZP8AS7hU3F3hA", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/dzj1s8OLCjGGmUzTagqEKg8mgvoUVCAyVjrGsC2DDTqXw-zmj1oEJYCssnDbVv52-bT7NrEKKBYAvKP-hiZOhqzXgdZiRKL33W05-JCLaQ5fltDZfswcslFGaeG0DKYmsi23dRcSTms", 
                "width": 4032
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/MXwBT20z4UDqdd6HyzWAJbmlmj8MXwxv5P9JQZ-OXx876cXLjrX_XSGZSOVrodN9B1dB6je7T--lAixDd99E5I-XzFwi9rQNhxoogns0dxqZppa9FNQFDQ6ZcDPgmWRqPj8DfxfFiew", 
                "width": 5184
            }, 
            {
                "height": 1960, 
                "url": "https://lh3.googleusercontent.com/C2s3FTpLV1t2t1cm416JKbXzQ89g4gv6ce_WGi-AA1xYZZyF8Mh-4Rbckss6w8BkGdzLl8HTcHNhvz8CkdOzIBAuOR6d5ipxO_kxKtCZinOVrxCKt0SW12aXeG6nkLq254rd2a-s_YM", 
                "width": 4032
            }, 
            {
                "height": 3837, 
                "url": "https://lh3.googleusercontent.com/nVCvTESgbEIBz902yI0QB3RsNEA8VJ0_xgcNZn0gwGDyQLfZeVEgAz9mxGJUmZdXgJ8acKJDqQleA5lDItToja42JH8YUxSt5m6YOKfyFtheh28RR-xICG2QtwII3pNfZxjCSE3atpg", 
                "width": 4379
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/5GOSuhUTMGTy9VMFBoS2o5Ix2_6phugk3UCtFqbH_ru2QEH-pCP_xyRDxt2R4WWXERg8a97_HS4b4CbNbTc99Lk-3LgLxK5HCWL4FxB7voubwm7oQYA7VRpHj71LPPYNs27npYevBjM", 
                "width": 5184
            }, 
            {
                "height": 3751, 
                "url": "https://lh3.googleusercontent.com/aewfrp9eZX8oSE8BQUeufnNEIh5t2aDg1uc8G3y8uU8eCBuNxwI_p8ULsRXGWQDobJaTs-FblljGOO0INogFNuMf-N14r0fOy2FOjP0zz3HZHp4IQ3rrXGwWbIaOktCUP0pAS8Uy9SA", 
                "width": 5001
            }, 
            {
                "height": 2346, 
                "url": "https://lh3.googleusercontent.com/8uQYgD16p3DMv6Lh-eMCsyLfDnaD9rASeThxYPEvBNaWE7hqY1og_zKTZgMMIrlcS_n8lLLGRHLMjKgJtrZ3cGiLa93Yun_OFQSaDiM29RazlB7dUi7eC-EgOZHTHZYdoam0VYxIvpE", 
                "width": 3930
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/90WFkjE163QjNp5Gh1TsgAAMj65wIRGurHn6zp3h7g1O0y2VMZzHbahKZWrgwjczXMLU-1CSzIOwdULZln_N6zfaUbAIrrN9m7pQcwJTS-Eg4U35hnt3dBkTAkmYQ2pE-hHGtVJFI9E", 
                "width": 5184
            }, 
            {
                "height": 3800, 
                "url": "https://lh3.googleusercontent.com/PjgCH-usdNo3RfNGiC4BikA6VIYsAb4IyJaGM1mWSdAaqpCmPVXXdnGDb1GxlcvP4oXwaZnn8siEacPwyDYYNGj-_7BL1Wa7rUQtj3Lq3rtHOVx6O06JH0dyKTM5Yi_R3mROEGVU9bw", 
                "width": 4376
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/4qc5uPWiFb8GciXz1Ufebh_xwJa1NEUiHGThWRRzrCi12Xvsnz-cYZCPp3OVtDKSQ_sP1tUU0pOYHhkqjSj_CrV6XTeyHphvZ0KfFfenb8XgaQ2N88aIx2zBdrqigremQJ6YbKgkBuM", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/ZsImEJ0FlW9ZHECmNZ5asyli_xHiAA8rcdgvT3qPPHy_L3WnEDlX46Q05u21fPopwetgy5gAXemfLNOUxC-nXguuTYvR0P8nHxkfGozSqr41vqqzhJS7db6lCjgIXu29dG9jk8VpBZo", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/8F4M7wdoKW-8FfpxABPWhaRkrSD-Tle8tex_lZg3DRSR7DbxcjkOwU6Y0iAII8RHJhsD30vKPpF34EDV7cD6JB3vfoqe4Co-gxrfYrs2eHBQpOVQ4wTKfdya4ChzAFDkWw2abuIdnzE", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/D7lfg3UkW03T4IFKHL3VEC2OMrQSo-n7ztl2w0RqrmaSVgSE-gf5Qh9daVceM9dcXd8tCjbEf_fUfnI_9z7bYjnmt5x4nRvUQ_YdW-cmqc23fYQs75Oj2zjYd0asPMFg3e-qH15y32g", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/wAYwu4pXY2HXi_vFMqA8ROM0tS5j9qK5cfQRinMKnWR4cg6eGzmU-sGHKtbMgmqQtwx-BnxUSn3cIOLe-syvRDd7EQ7yMimoy-kusPwg7G7KAOsKFlgsk78dSVKdR08N798XuCTatio", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/f9C_83XDCyaJUVOiuQN0eOV4XIXslnCir9xts5-ZMrpAt0Lp1BQ5KwSm_fqvyBlDBLWBq8TzBnssS7-McWYQqqdzmQOwM8Hw2hCFMYegz0hKiHDWCXuAxH6B-Gk0iz-TNOulcuho3cI", 
                "width": 5184
            }
        ], 
        "title": "Healing Presence 2019", 
        "url": "https://lh3.googleusercontent.com/dnt68lVzODsoGxC0xlYfIfTKFpAHD_U8Cavm73LP3j5TD7TGGXjtvp5YbhA-hr_-ekkuN-XoctdG5Fm2XTBZUQsev2IDnohUb3Q0VXLc6_qn7ZWCK6tPb_u02dYa2f7yScVG1JbyFQc", 
        "width": 5184
    }, 
    {
        "height": 1515, 
        "photos": [
            {
                "height": 1515, 
                "url": "https://lh3.googleusercontent.com/0I3hDLgNKa0PEiCA1PkSUsdikw67ZeT5W1ZL7j28oKHRStS9yoRVlHcbxwjEC_uUe7rynxVw2jrShPIMuml3OMI_lUTeQvDPG1OPprPeic1jRSJA217uvTsInSMJ8uno0_cS6BsIO50", 
                "width": 2076
            }, 
            {
                "height": 3847, 
                "url": "https://lh3.googleusercontent.com/t435-wpXE88B0eft9sjFAI1pZO_FvxjN8TOu6H_v5u6pGYxOTs0XQnbNpsvLhpSBvhYSq6TIqKOmhEBKQRkF5C2lwP9_Kw08P9iAyohPMwxYMmJ-88ITLU4kzfJPHeoXDy2BMijO7cA",
                "width": 4776
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/HX39Knq2KJ1pOgqX67uwD6AHL4XBgFdzcWsMpZ1XINYPQoW1kbYVxQ6AJQlAdnTCQ7A_moBhd6YNwdxX2_VTSDGS9zxH9Hx35h1tQHHvHCgeA3m6bU7VbO92MGJb5Z9SSmZkqUDeW3I", 
                "width": 5184
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/V-kPxtsz_1e5ptjOwc5GwrZ0ePzCvp1WkNGmyCjnCltv3o_AYEqv8--qhqRZMoOLH6x8iIpoqrYwoVMSVhL4KYHU9Pp9AkE9uq2pOv4LduWhhljtYY3NIF67WbbkxxB54E_uGrQLHJs", 
                "width": 3648
            }, 
            {
                "height": 2003, 
                "url": "https://lh3.googleusercontent.com/7Ub-bTphSaKFZbsQ5XxoVORcC1veb9ZVKDoFYY-deGKr3LMeRqrfCnpPG5BHmYlvZHeWK-Z84UQishNdjSHCPuqVSOM7ztH91asMxGSd1J25z-DfsnzlRxaeWhdiBr24hm9aIeMkqIw", 
                "width": 4019
            }, 
            {
                "height": 2705, 
                "url": "https://lh3.googleusercontent.com/axummXfj5JVqTOMBTzFBXi0a_0bXD2TX5yj3Jh_gOIDf9gA-SPJ6I5sujNyVfOdMd8wuLtzqJW0h1aonWaawNXaIBuhVdVDxyKGZ7_s2WiSxpWpfBik_VEQBIpLtHojf0edm4-wFve8", 
                "width": 3854
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/v_UJ2phzgtqG_u8Q076XlId_QtHQ3F5DOvUiJmt0stAzrkhXCc_OEqszcH0RI5Pt-YBph6PTNH5nDKajPMM-sFA4wgWg5ldkWreLO2b1CNb91k-H8OkT_Hj2cfau7wopLDuUkYGeXm0", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/lazYVzvJfx_E5rMAYMXKeSZx0bUg6j_0ESfqNBE5DJdptIb6q2_CxTh4MxyeQAUSr1rH7w1gYuL69m_M9L0rn77hGOOUNnE8N1kkCqsk7kMqRGHTz6RUYybGqZ-LdltmryVeAvnTl_s", 
                "width": 5184
            }, 
            {
                "height": 2469, 
                "url": "https://lh3.googleusercontent.com/8rvm_Sd06pnb8NFuaKAxxzt1X7NkAuBLFECkwfUtANFnqQgZFhZFA3wx6n5DkkZKOAgwN3B5vfcXnvNrrIsbZzJ1vI1COCIs0Y6madTUeE9DYKLIdqjFmb0fThL6FpVGh7U3DDJktSs", 
                "width": 3078
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/jDUA-h6BLLD7sFHzpx8e9mJEuTh1cgBYA1QFQldKlmU9O9ep9VVpj77rHW-d6sQyDgD02QGS5LEziFVFSAY-93sRIVQxi0ADrFXQsltkrS4NVzrENf0h28q_JYTGm67-PXsBXHfcJew", 
                "width": 3648
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/OXGCXyfHAlmCXX3wKtzuViV1HRoDoFSZlcOGC-PJQaBEka8lGgIFAQqDGeAj2OJaSkG5FioxUa_B8ec7HnnVtY_uUHBHGWMb0ThHmy8JJHmyMwlg9Ehk4cM0PzpIDEzZ2YWMEdwZAvU", 
                "width": 3648
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/kKJP-maJDiqV0o3uwzNO47AySkEjxMDnqY097PmNezQmjanMbVdSrFwVeB1Y0-Ek8fIXgFCaWcg00dVy6NUWcQBAcROzzrrDvB36a3lPTZhEIHrXk-r5quiRmZ9uIceMWOcYGsMApU8", 
                "width": 3648
            }, 
            {
                "height": 2704, 
                "url": "https://lh3.googleusercontent.com/ueIVGA0SbaozomICPP_zqG5kinqXKKU85sFiHTpssoKjuhHoq_w6Nat9hn8LDa182OX_f9IACSb38HARgf5DtMzOe-YGKMgMf0ymRe4tAp_80qcNWexmbzKPjBeV0VrWmZX-wLgVTPo", 
                "width": 3606
            }, 
            {
                "height": 2534, 
                "url": "https://lh3.googleusercontent.com/FDS_w6B9p8v5JBacaaL1pFCKS5xB7nlU7DR4WspZYqipZ28Eq1iBlLPMvaO5_qrFeofggfJ2R7yNAxkpZVq2XKMhtIbb4xVRGxTgcgsSFLy18XDiqd7SL0oyp-YrTntV-TtwA9kZD6U", 
                "width": 3264
            }, 
            {
                "height": 2625, 
                "url": "https://lh3.googleusercontent.com/yulFx86VLfs_r60YYLLZ1e0b4GbZc0VBtf1kmoJWi9xwgHZE65XWiVM2gwruDb7cZNOIPmQLW0BJln5E1IO2gIOP_J0ywV3_oUQEf3ThPIpai4aatx_c7SOgs-jhqXeskMQYU7coxiM", 
                "width": 3500
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/suZRl22YAvjqS5N1bzTKB9sWB-SO5RJd305ztV8fF0_1b3rXZC8ew7mpvKpHDckPhhNziAXGg4x5gzr8wXLwVOHSY1zGptpBhOSLqanPDRAk-MPsmQmStmjXmMd_kYMmadLKzNNPseY", 
                "width": 3648
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/_3LPoLYsQfBsLz6Sw4GzK9pkSfR-4COnjza9U-_dV_3bw-AQNx8CrEPuIGQWkWTdmoWN_s0t9WPeJL24L5E0O2L8QRGibsc3JPINLv0q-OAgDjdgbPlqTpZRD8pnpXuCrVor9PmxsSU", 
                "width": 4032
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/SK1OF6sjzupby2Cd8G1bVFKvgkzcSBCJsyMfLosjOy2B7WnjDbCLR5Nhx_dfEb46Ylfh69k3k8n6fXl3wCIT-NliFg6FsMuwoKJ-RsUu4WkeRMpjuJH7-kWPEI6gdn-qM-mGzRBUt1g", 
                "width": 3648
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/A1doi5Evz3jHd7zaL33RkAFTo_JunUthF_CuKmRsmoLPgTqMX5aKmSDHfIKbln05QdCwIxGKUtJpsf-elw3rGwhwAowpvzJ7PuGRByYpFQAGIwQPmIJlpK_KXeYd4rmNI8X1y88xsjE", 
                "width": 3648
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/aH515T8Ts0cn0EtFNC6WgyYr1BJ-Ec8ILV52mvKqtMPBU6gReGwCwOV7rfN48kSXaYQA1omiCzyO-ZAV6EWYAUD7S5x3SgeDCMnwL4h6VMNyGQzgkZPT7hPU1CJpHxbQ0jAYydae3go", 
                "width": 3648
            }, 
            {
                "height": 2736, 
                "url": "https://lh3.googleusercontent.com/yqK0dOHqjQk3YbdSzd9PQzxdv0Hy0CRKplyuzJOjgA485ymtBE_3brB8S0adlxPJpHOT1z1kkZnhFTkE5B8yfAo0Gj7UvmfpOcPRJLpdPoiXWoEelqZbsTo10AIC2FTYwFGAPydGg-Y", 
                "width": 3648
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/IeAGt9os5HhykesaX3IhvCniG6R2eavUmyNPGrljWJHk4OiR7y_IOwcZxYvjGZbEGqrXsonBZ1fi1f8LY-ytP_ZNnBRddTvtdaMQgk_GPqnfjc5QUo1HQCxydoVU5c2UfpKqAh1pS_k", 
                "width": 4032
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/7711hmXWL2yySG_4ah6RtQNswCSTKpm34I-kwhIWGJlHlREmIZTp-2itTzIFEmCAWVdTqs2AQcD_i0ag2GpXHFxKXrqS-L5k7Yn3YgZtA90aDbsLeW8E2aZdIxhgIzWmMIFAUxHqLFE", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/lnORY5X2P6l-JRZyP2m0k24g4SG1cDpALYA1Bqav5vV8vHdPD8t7Z3OLzz1MVMFeWYB8dHMUkdh4ozxBwTImXoBTs4SAN0qZodgch_frYIVXG4oKMaTmhYSdImaDLIyeCR2kOWdaIlc", 
                "width": 5184
            }, 
            {
                "height": 2257, 
                "url": "https://lh3.googleusercontent.com/WHkZRuXWxLEdw5QGquiIh5f_bjwHPpQU7HCfYTHta_caaFRNdtsOu_ugR7CJ1SqwO514U8whvs1nVShlQ4k_xa4mwqYOavl4l5Wrbi-F0QRAojyDn2CT_2E45qDaYv2XD6wy_cwuomI", 
                "width": 3977
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/Nk2coj89rgOgWY46ATb_AKgg4RJJIdK8qkNAgnMIp8ImbFftlnogDys8Nd_eSS0_L3faoM5DZq4B8qbI8qnNdNIyly0eyMCmlwKgqONieknrvZOFeVWAC_XmXBbsALAfuq4Tu3Rl3-A", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/3tZkadI1pUYABNyM86mQblUFx7lyF9eeljb5xIjV3ql6SntfGDmKC7IhCD3-O93QBjAC3yR3VM28ABiiXJF0zDftMmH6jeKlw1yhc2Bbdjz4fpLJBufMUYjNMNJz_zaEGgwQosp5Jws", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/ugXweV3HiEmihRuQqOe5BtTcQKEHeC8fm_zmND5qy2hJB5p0q5ZFLe0--IFAduKDM5teGUx3WkyyLc3H_rkewpg-DCxhqtXwf6xTJ4y-Q06AGgMBeQhdODeSuPem2UAgipbf3cWFQ4M", 
                "width": 5184
            }, 
            {
                "height": 3087, 
                "url": "https://lh3.googleusercontent.com/l1e34I3GbVzL7hOvmHoyChxYzaYMC6OYGs0v-ziQZTA3fFqiH8mxgGrXnpee-7sFblKc0q73oJehHjr_T_PLq8KEwsEEegwhfmb7z9qwvKlK-mGlqZE8PE-kuCGee1o_KVp6jh4tLbk", 
                "width": 5184
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/z4LOYLuanTZP8MfYTbVzvpY21NH-Z59SAm878mPnreAfjl6jCv8toM8GqCBGoJYjyq7TsqAvnIuskvxqyhMICwoAwY9NnPd2PtwezqlizV7ecDCjDF4nc6o4VXc884CH8gv_sVOehRo", 
                "width": 4032
            }, 
            {
                "height": 2791, 
                "url": "https://lh3.googleusercontent.com/IR-9GecfscMoiwCJyJ_Y1-P05ckoxFSDUnh4vdzZs8yxBSJ34I4QCRopTmBlKTZuSCG3Te8F3U5Y-EvQd16JouFSxyJbZpdwoAKEn_JC2desWjCwIAam1bBvEE2xDKONZcF6fzQfkEg", 
                "width": 3722
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/laeEfD6LCvui4ahq0_L6G7YF1qcBHfORrtLu2iUpcfzV8Fh_LFI0e2Z9ie-IJ8preUEPrBOLP9DegjC3HU_ZJu01PvryqkilNRhRepFadGnBo99CJDnIIMjbBKDtmZbcoUD8MrhiO6k", 
                "width": 5184
            }, 
            {
                "height": 4032, 
                "url": "https://lh3.googleusercontent.com/L3reOPayWfb-0y9hWlIwqPrS-STbqCaMJ2sjPWxoa5td-Wr7IHav3MenzMlvGeTuRwIDRqgWnzxc9z0wJzern-SJcpjpJjpEP5C6xDKogPSQe0zWw1pct0-xPM2IqVkGHH-3M8Q-VN0", 
                "width": 3024
            }, 
            {
                "height": 3398, 
                "url": "https://lh3.googleusercontent.com/kB3oh5pS8rtgpW-nHC8ZbRa_5qnxSfoiVBW8kgFoiZ-uW00b7gP6psQkh4RjiYZ9Xidk56YdGFPdw4165ldLxaC7MJkjKERgjGCUOwtuiX3RQCQMxA8ajdZWMdKh7Ag_V1oDNl7khf4", 
                "width": 2998
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/zzWXrXj_eT5Lv5eJ0cVaImxm11wnM7oFyr_21Ao4ihTgWpAe7KVUQdRuDnGkB7wKmMZjLbZw3VcVdSpNyMLVnfn7aSy8dpb2pjDKLbYXUiXfFpdJB7L0sdECxNpEDbZ2UAu4FH9p8zc", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/8waUnniQBwICicWbL7zdjr2CiaZrk7y6YwKnOcMfbHlq7reuWkstZ_TUPi-5JrudJ8Hlo628w--2qcdOZYBEosBEyyZmvrjaMS4ueFiiag1ed3r02FMEasKqYV2MR0sskcjCvv-viyc", 
                "width": 5184
            }, 
            {
                "height": 3879, 
                "url": "https://lh3.googleusercontent.com/laEooen07xoky2naEbJViX99XoWh7liGjP197SeHezIrTRN4XyFW3Fp-8zWRIX0b6yD9wqWfVmWhUBt9GA25urA83TqfCwGH7wkuoCSbHdmJj0ZsMn2IdNf1MIeGoS68Mpre42vY4LQ", 
                "width": 4903
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/pRbTDy-QrJeFnrHVQ1usSxkwUPD7X4Oa7kgIhr5s-CgF2CBtRkMxVcXIjAfiPA6_jNBsOKVUqKLWM2XsrfyE2WbRJELB-MsOs4NQ9DMtNmCzmD9qnN_NjnvudMyvwIwg03xrR8K0f4E", 
                "width": 3768
            }, 
            {
                "height": 4032, 
                "url": "https://lh3.googleusercontent.com/96KRw9_qdzLpBw8wOoxFg7x0qZxss78sw4lhmK7Z9B8mbc6l5GrF7MGNvYm6e6foBsgd8EaMCC0Ek1IP9z0UUMdAwpIl8rfvMgy0Kbl5Zd1Ctn_yLkq7A8qHsr3JIRHjRmDw7IU2Gog", 
                "width": 3024
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/qlh1Bzg6oCfKAhyS2o-O25XoRkX492wQRmQbe3OqAxrksSqk49IMD9ORMiETNS7LOvDfb31uBHmboRd_wcmdy_NlvJN4oPWrVxsUtMNOHRh3ayLuEVsap5a6_04WTdL_gMHVRNWrtPI", 
                "width": 5184
            }, 
            {
                "height": 3814, 
                "url": "https://lh3.googleusercontent.com/GXBchFH7MjG_V75kHm0u3W3MWM70NQ285mGcOkHHuuCwMQTRdSMWjs5k48Z26_GeD2jXjf7kSwQUy3SC4uOcm14i6uqb_0hvoE5Byo92BrubcFTXhjC0EyBMWbeD2sB3LQf65v8It5Q", 
                "width": 4172
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/mYk77JY_AZhx4iRtnWxfRaHTdvwrqhmUB5ADYTtajRgcHmm4de8SLUi6FPWaApXtyn1Pv09Ovh0vlN2L16QUxqG-m32L9fsz4P8UCcjZPeEYMDjaiBMB_yUj5swmnktuxLa17ZsiLrI", 
                "width": 4961
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/YOummIk9mokH01YqZBBpCBdYP02OQ08_pdvUc2bZhEayBVdvjq6sqwVelFEi9RpMvY1Zd2DYwCUbBFSbhJ9XGVIoQG6dvFbMUUnYbO3CjvFQW72ameAxQEwlh2fA33MEp_OziUoYFKw", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/MHzsi6rus5uLiCKYfoKuDwIpXl4IsEn5_bfhjd-N5WgmM5TV76a4jlyNhyzWQ8YWr5TJ4BqZHZVktBEOqddzWGdyYguZPKymNaXTZxyZK4kwGDUguyxDLe81ZL7bguipy4Jef8EP8ho", 
                "width": 5184
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/ktq5XXC4PPPUn5yoMwWD14K938WHWKDR-MDGPMWHerap1ENDTiROaUZotbY5A2udTYqSVGmySb7NOXExROcdgGAL_baQEF6juwIpiNted3-qduIRgqlIhcvJhs4UYVbBrwVHYxkVbJ0", 
                "width": 4032
            }, 
            {
                "height": 2563, 
                "url": "https://lh3.googleusercontent.com/ge9-kspmifolP3WNDpY617kMWOintWvd8zIl1z_rE_iPEFQPyQCAj7rWpGFPu8ZvCNrshUxbborgbCas2o8v24JpWHS3RhaIw6ovlwiUOijFAtij5NX5hfeffwyfHzZZ4QN2W7hBchw", 
                "width": 2819
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/GXNh6ZzE75BEyUt3xK5M4AcgvQRiIMaZCZj1niGclVcKEYEVfC_9uaSQCkdcF0uzKC-eWbyAjelEdMO2Ak8d8nNG3sa95ICip5YKcBzqHLmXfQT8Q8S7BFp4M3fr0FzRPMhaz6BNMUw", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/u3kE183pclr0aVez5Kq7f-07e4a0hmMqfrLs54zide59gxyBdJKZV93WlKt51NhYjgg99tulNt7ItMMZxsg6_mU5zXF9R5GJRy1_YZSBqMGBSJYk-8xnc4LGkSyWN66waLCxLUWptRY", 
                "width": 4032
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/d31_Y0pR047RPJDDpbcYr9Hd7JZEgTc0J_2MiOkf3Ev0h4gqWqzmE2U4b-OFOFbaQDuIUnsGDPQZt9-zIw-uqvcSxFx7K1fGMgh8TgbwBrPALSdRhlCuBLaK7JI_o_20mV45gOaCce0", 
                "width": 4032
            }, 
            {
                "height": 2163, 
                "url": "https://lh3.googleusercontent.com/RTZ-ARCh3rmqHLW3BqBnXpTisB_6h0MP0dU_6Pcd7LFGxjpaKptUhuR3Y45xhfBLmTvdbnPCsZFglP3WQbv80cqfisDjEJTAFcSSs-EAurQEacRzo7FCwBJr9eJw2HjSG-Dyy358LqY", 
                "width": 6743
            }, 
            {
                "height": 3672, 
                "url": "https://lh3.googleusercontent.com/gVfbTSw49xUVYDD4B5GUhkTj9a5ehBU_CSItU1mxTCCGGQEvCK4mF1_EZIyCD3Jo9dgI2pqGieSax-V2BSGjYVtna9SfollI8-8brdpqZ4bRnvsoV4WTuBbd-RBRoIe4HRMSioi4q5A", 
                "width": 4896
            }, 
            {
                "height": 3672, 
                "url": "https://lh3.googleusercontent.com/JiXqWlj3Rqg3oLbCd5u64OBmkE2s0Z6lg-aOjrC1db7Ay7KNEXzh4lO7lX8RSlXTrgv8znPePdKeyNb_jCw-d4jiIZq3AMpdmADZ0IRn8torMRSX-6JKfZhFnokzRN6I5Dn_s6Fpu8o", 
                "width": 4896
            }, 
            {
                "height": 3672, 
                "url": "https://lh3.googleusercontent.com/xmj2nIIR-KSIOrq54i1YSUinaDPq-zrOcsghaNMwqkTP_-lMsFOYbIBqvgPFBuC7Tiy5_2ExTjowFiHPEG57d2Jl-Hi7Wec8-3VWM3aQYVsSsc1anPWRSzwTWoO6P_XaRPlX3I1iLzI", 
                "width": 4896
            }, 
            {
                "height": 3872, 
                "url": "https://lh3.googleusercontent.com/wIi-JaEnIXuCcs2MBtmJQV7CshMRd5xOfYbYwPVw42ymdc9dkq60GPWC9QpkMfDACV-ZASfOT2VMgzzGTlBrdMJ4Uz9L4gD22ocnNppeUUtqmx4bBGlxbizRizrC8G0oQzg9YIm9vZo", 
                "width": 5163
            }, 
            {
                "height": 3738, 
                "url": "https://lh3.googleusercontent.com/_Ae-hBeYeF4SGGNVWqo7srbUxGzD0BDFzaywusX4yyOLTbSxkiXyD5K2lWvVMHvqTDXESpT7aYhoCcST1WhpdUpI1oraENFkgbqaaijz2Tmn_vC8GhIoJ3ukTxuMTq_JeyZXan1tlmc", 
                "width": 4565
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/EkgMx0fyzYUWsGT2eH38N9tk_r-tbcMgofgWvTxdJ4sPEf-gvq3ZFDiefzzdJ9dWfOUl4AnWlBkWjYofqb9GUmhpRShqSUqOMbXeRJskZgdmpw34KGig4vYT9eZArOrdg6XOOE7UuWc", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/uj6eHD8IQfgPRmaCNwpmeGMoM6fSv8x9Qo11Q33y4qfEICTIhOYUolhmPHO5lQd7VAUa1g2kXaaYk4301X6MLGcsoUo3zvQtyMsH8yweNQsCjlTOiqxP9nneOv3m2Bhv8dX-G6VmIkg", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/faTpDXKfbfYZ6a2VaJ66eaSKNGYtW9Nis5g1_7S_5gvGpREOECkh26YqyzKUh1PAiYy6Dsx69qHtR3KaCnhaMAfSQolpT2MvWrWMHiN8TfGnqSVFlmgw-NNMGlppHTHIjHtWQGXrvjQ", 
                "width": 5184
            }, 
            {
                "height": 3853, 
                "url": "https://lh3.googleusercontent.com/DWkuf1-wq5ZjjFF5g7p3Lg62WNsXdqTHpkU_tBAuafKfzkLYlJfGmi2aQpUu_fDbE0qeUzb3S8HlODSW8KzDDpR9JKOSHRQKNLOm1UIcHhJ4V4DKJNylEx0SpKDMEdkgBzKhf_SygEY", 
                "width": 4729
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/xq5ga2ah_crbz1yeuO8tUmbA9vg52yKNFpS9HnWoIighP277IAnBiTa_k8FgNMBhvN50RxNHOvKjc8DUukXRaJOfLKaHRPG8PnMHyVD8Rve6KaIu3GHMxV2MMcOwgbBHdPNpxixnNaM", 
                "width": 5184
            }, 
            {
                "height": 3647, 
                "url": "https://lh3.googleusercontent.com/i6RSSSKY-V6a_IB947GLRyN4xo-abmOZtGNxsWp8xeOT2-nWh_F9frzmHTjehUsm5m_HNZzbgnVnZzk-E3DNpmBDQoBno4VDzvG9Wzb-AZdCIlri_M5puMRIJfMg1ExOuX9zWFdyvPA", 
                "width": 5170
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/1WrozG3nmEN_zamVB1NxTmVajPEpU-McqsdETCD4r6C2Y9f3_r_xX8lioIY6rziWvFhhyrBHjdi-Yx4pc-rSU2_svYwg0Bd93IJC5PoS7DFH43OhKMluaxNqG_u2Swq_CD6ddzfW0rs", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/EFuLpId3fJSbmCKEJxnabElUT2-PyySxWA5Z89LS6M5fhfZbmWpPz6RwilDf7C1YT7MBaI4jeOIjjbiUWwm0XRZq7AozrzzewyKQNP6cTQP2Gr9D1wGauxIYR-G19dSXrAJVbMYBY1U", 
                "width": 5184
            }, 
            {
                "height": 3348, 
                "url": "https://lh3.googleusercontent.com/MVaN6LAArF7gJBS98cLz2btOQYuMkQ_iPiGAiGUlSGMCZrB0DY_6q8escMW6ccD6q1bKaFbh1weecNQ474aFq-ifk81dXsvhPH5wuP40gKOOLGpVo2dP5uLYlh4KbPT26AbzftZWUNc", 
                "width": 4830
            }, 
            {
                "height": 3475, 
                "url": "https://lh3.googleusercontent.com/Ff2f5SeLf3t7lMzqFc9A_2haMRSscDvkeNqM63OgLWMxAAukDGbSVvDsMtZ9_B9ewWk3f0cb3lmbIdAeXDOvjSStFYDt79zKbro1Q7Zqji695lH71GrxwX1FsmKiE9Yezgc43Uro1hE", 
                "width": 5167
            }, 
            {
                "height": 3854, 
                "url": "https://lh3.googleusercontent.com/AaX8-Mv6o1vYBrMXzl8BO9VGn_XUVlVgtKUHx-92KGe3oK1c_9K8SU7GP38dy4Cr-JstzwlcDib_WSkNj9H1yvHDQxgoc4ADwQTDIWihRVWt3LHYp0z6AU0CYEzeUWfhlftEX_Bin1Q", 
                "width": 4812
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/d68y-4nbK-lLs1nomg2j5VbYhRIBWQSTcbOF_nMwNNjZKtAiev9jctNaoVUOrffDRLXdu0iMFuCHaWRCd0kwqYZmfJ1S7dX11hp7zbx6ewsa2ek0rUDEUl6BWANjSABtpODZ95koNXs", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/ey4MhM12-gquLCBxvn3eqYAxPh3T8myJ-e_SmTYWonT7p_FZBBMeznQNkr-4MaH29ELzrGDBXOTLd0-_qVrBxyt0DU4scgHodRPQppQY20-j7Hi5IrCSWuELfrs_52XAUWU6H2PzMVc", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/1GQmPh0uT4DINSFwDSjcxOdP4U8ZSxlVMmOLGQFBVPOlGlRpcZRTW57UcZDJ56Gro7YWwcU8Gghp-aTZSfUTIuW-a2P4I9V00g9qnqjg4y2MKVTn5jFRjxy22Tc5rmKU8IR13SEG6jA", 
                "width": 5184
            }, 
            {
                "height": 2895, 
                "url": "https://lh3.googleusercontent.com/eJMdEkLwOnES2S_T4jqrEW7d461iZBJY3j_ZGBDDDfMjd1PSufPylweKkXk88OjcIqrV5Pg7PYIy0fGyXlT7mMZnySk-YvhZ_0WUJGJIOFwFoqCxvriqn5uV7doRii2fk5rChCj6aQg", 
                "width": 4335
            }, 
            {
                "height": 1826, 
                "url": "https://lh3.googleusercontent.com/gJ95gNrkjmpxKWu2v6a226_-NIHxngtQz_b2fnHicB0Kxq8wcKCLAFVdealbtVa35tq9htTDmN9hkjAcG-omks96vlNpa-9tmHPEWLokf596hdLesYxwNHnQ4HCYyNSQuSE71n-M28A", 
                "width": 2562
            }, 
            {
                "height": 3024, 
                "url": "https://lh3.googleusercontent.com/0aTBBf9BQ7_Hv-tpS6Ra41-S39wpmHTOkBzWsCmwMY-JhgOsQ_dSDiQ2lKTqTQT5X047zhjCN7ea5lyGwPHmfTfuE3m0dld8cSpzqy3cWOrLCir-Hri3_Io2kl8MVkuGG3wVxvuXBiY", 
                "width": 4032
            }, 
            {
                "height": 2735, 
                "url": "https://lh3.googleusercontent.com/V-HkahVOmGLGz6J4IOnmjnLWOfHJTX9s9S3vp5FIexPwc6lwlZBWWfzLh6CVlipnA6AlF0yc9BxRgvRxB3dlC47Qk6nnwdTUpveFjGmnJoEdQ55wF4PThnPoeh3uAC1xeqxziJRGQDg", 
                "width": 3768
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/JQBtivdl-OIy0sxvmr8B5xFjwWYY87DJgHBfzAvhMXXywA-OI7ZzCaAnCulREs1NlEFnvX21vANsCUp_4OkkXqzQzPw6n-ZG8Zxrmq1fnaR7cUkTu7Roblbix_UoirhJhQW8TLXFq-g", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/jU6sGYudeslOzDz9Zbuc1Iag7woeXaHWFzh4dzrflZnP1Ztpta4cfsRzKl0NP4K8rCsdVzEoDJYu4QTWdppWS1Yxb-xt8iJ2sZANUe46gjwEC1r8yRNWvJa_ozpMAF1X20hN4qZMviM", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/i3c716qbiFXGnf_zy53gHwyBI-Me3lPOgHZ7xovdSEkGdKzSKfbHKrMk1nIB8V7vukEa2OamhccOWBQc_52_vbE1pK-hkJGVddoiSZm4-23fguxT4oBKtArwBXLP977kewucQSCx0ks", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/CZGsC9BXHbf2JfrjD1ibsGfF4bfD0tKpgfZFgKh4oOvOwzc4knSqVVStihKP8_d2Bej227zU-wr3PaiMjeHl74LJSJtqeXq8I1iYiNUl8YxfP0bsbFsufH1LeeJ4jAmi-zzg7ldsmO4", 
                "width": 5184
            }, 
            {
                "height": 4032, 
                "url": "https://lh3.googleusercontent.com/znk7m-0nGyefDFDbNsgRlWUxX_B3O-Mx3_CY7XZYrCla4mUZCAosmD9Nslww_oiStJfvVwFS4ae7ZK9Pi5l1y5qtHY6LsBvl1xBWduzF19nA6WvrIqt7INJyWC-OJfD_fM_mToME4V8", 
                "width": 3024
            }, 
            {
                "height": 2268, 
                "url": "https://lh3.googleusercontent.com/xVQMNza1xCIQBYlFx8Lybg73lQgwBuOaIftE8iBDj3T38d5N9_cAKvOUdC9Q_Nyr828v08Fd9vah-P6h0mk-ddwjwsqj6IBRFL9WBbLe48wvGxAkwQfAjdle0yLqKQEfkzewJoh_tGk", 
                "width": 4032
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/VHbXJZOdRxhXyURYMPLJFhp2rJDKyzrHdQlqbwhn8YZuTL6bnAwOFPO0YdKoDScO3fo7qpypvcwsEnVeA68KsBZOXQ43O-90Of3hav1tgo-e1XqoxTuGJHERXxRRzulEA5-TBTLK7bg", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/TOpNzJ329IOtUK54hDAt2IffD0BzwCUm2Cbkd1l4WbKjVTiVCzlsJPlxKRgqEfp3cAayzcsxMchboq_1Xr3MCG2JPI8c5TtP15cgReZTEnpRyyaYEC5k-dqB5_ew02zKCIZeOsqipJs", 
                "width": 5184
            }, 
            {
                "height": 2603, 
                "url": "https://lh3.googleusercontent.com/j7Put_mBiAqxkzvpFsjG0as14oJiikMz09jirHJUJdJW3Evd1rksvU_Vj6AP2ZAFcTrjKxP0MqaACUTXTyNzzGMDIaJwb0kAiB7r3ys1ecCPWwZECdtaFyQZ8cskG6NhbvBEha5rBfY", 
                "width": 2864
            }
        ], 
        "title": "Healing Presence Dec. 2017-Oct. 2018", 
        "url": "https://lh3.googleusercontent.com/0I3hDLgNKa0PEiCA1PkSUsdikw67ZeT5W1ZL7j28oKHRStS9yoRVlHcbxwjEC_uUe7rynxVw2jrShPIMuml3OMI_lUTeQvDPG1OPprPeic1jRSJA217uvTsInSMJ8uno0_cS6BsIO50", 
        "width": 2076
    }, 
    {
        "height": 3888, 
        "photos": [
            {
                "description": "Jim & Barbara Wilson, Directors of Healing Presence Retreat", 
                "height": 3640, 
                "url": "https://lh3.googleusercontent.com/pcIpoPXGENRjQQluhfpQDa2JvElKubx7uyMaymJT2WAXzFiSf4qyWpsBLU_pBRJkTpnWazU6BmtCR061TIPnmXA6OhugCCxzhqb2U9BenJK1zRKfDqqd2Q97GDpLzxLiI_iSuUMvFO4", 
                "width": 3331
            }, 
            {
                "description": "Flagpole garden at Healing Presence", 
                "height": 4160, 
                "url": "https://lh3.googleusercontent.com/336qnFNjRwmfAYJ5wVkdogwDLpojYmkEQ3Tpsx7wLuJhr7a3ZWVaCzZJaDClTsERYtr_PurIOBVEUHi_uVMIxKvnO-V4T_CteVjJFQvDBAH06kSEEz6gc0IlHO6O0Q-MqmpUyav1WOM", 
                "width": 3120
            }, 
            {
                "description": "Entrance to Welcome Centre at Healing Presence", 
                "height": 3822, 
                "url": "https://lh3.googleusercontent.com/X1zji1UUCenUCIZTe8VXkG5b3A-yB2Ohd8xEEgTEJd8GuGmRDXKYUj6_2K-7Dl1aUoYmyDjAZ3fwznEi02O-EsnE05Gy2vEGqbKKz9joRsT7sPVd0p3f7rSTl89rx-vB2PtH2lj7Ec0", 
                "width": 4385
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/6vgt35IRZqgA72Ad0ny3sKONdFvGScS66JZnTKKgmXIO-MYWsA-eYi7WhJ6K6Qyn6APd7upWWMwwHQnO4HOLpJsx4QLkNOKhe52N7sJ3AT6LU6lHzEKKNp4Tqvy1L4xyXK5EzhXyfhI", 
                "width": 5184
            }, 
            {
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/ntwVaQh4kZw-kNqXSbCg4BszvYiMavAmCl26wERtUBu4xXb1MPJE5TOhQCLXvU2RBeDqM_kGUtIcr66MByQzbeOHxY4k3ZuDcn2YbUiS5eN5wn9kAT4CzGTP-4I_vTDKgmeHGTJjeeM", 
                "width": 4208
            }, 
            {
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/uKPVTDdTeFxAQMqVcz0RTjC_aV7-WqC8yXmF3rfSTWZaOaDIfKl1j6v9VyfWHocXLpkNo82-3c875nKWEI9IdtvGDq8dwP0LXpoZ2QUbgs-lzYRGQoswQ7FmFxr5IK2nSMJR9OYMhOA", 
                "width": 4208
            }, 
            {
                "description": "Worship Centre", 
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/fRpWD0Vt8Yj_JOCnrnoGWeICLD0dH7VcEXn4zYZSK6YAAbiVfCF_uLjv-c9Wd7GNImL8cSBXSStEc32dwt3Ay2P3VdYT3kgRGnOz0ph5X2nbONtYMMksUvkv_jyH7qH3WtneeIE-1Ls", 
                "width": 4208
            }, 
            {
                "height": 2368, 
                "url": "https://lh3.googleusercontent.com/ymQdSNdBebKn2-EOJAc41yaU93gM5YGQ9B0YvJnsBd5UnvZ2X2ShDYnnUPqUiifS-gZfq0__B1R5PjWTlYHPGpADh15cMefuMPiWcVNwGUknRtUFNbC1F957IyA0L67-7WxHWmxuVSA", 
                "width": 3200
            }, 
            {
                "description": "Kitchenette in Worship Centre", 
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/7NbTpCSm9c7Bx5D5kG8T4fChLD-Xu-38IjQSfYEhTiRVOqZg5P9Ta82TPJTgbwAeNl6CDWlIxd2nuN4YGPNvnAAv-eTvykdiT9mHg2zPHQKgduerIBiJOc-kULTS7z6PGw6BUTMjZQU", 
                "width": 4208
            }, 
            {
                "description": "Hope cabin", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/RvUcDayn4zBTc313MvR4Y_5TaZM1maYRHd5QHWZ1DNBMRYJN7cvRySUTLAg3QMnalLPM7XL2uGAujJL4F_IfFf-FtTyYF9-eJNBgQ6NwBJwMXS6dnx8qhGH5HzzJAzoDZioZYOTUVWE", 
                "width": 5184
            }, 
            {
                "description": "Love, Joy and Peace cabins in September", 
                "height": 2184, 
                "url": "https://lh3.googleusercontent.com/qOrqXL8oWlZXbfhzOsPNfgVOPJ-STpc-se2PjF1ACkeR4zrroBUvOyEJncOoqP_myvWl8SEkkJd3qiUFRSkOPAQubJL1O7FcbyL1AT79xDx6m60VYovnb6xuKtm2XNJbVuEf_LcDeRo", 
                "width": 4117
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/dae2xkBC9J3AYEuqdtZEHS5NpcIiyUfZVt4qtwFCHFjrraGdpWfA6mB2cwfVYZwWY5kCCbwQyuLe3rzk5XjqC_FF24dqPv9ayWQquTFOsVaxftarUCgMK2Z6Yuu0CBNyCvpJpEyO1RU", 
                "width": 5184
            }, 
            {
                "description": "Grounds at Healing Presence", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/7Kt4Z1uaZLrOmLhWHoHX8czPYCUXWwKFz1Kx9A-G5FwqyNDwSUuL091IxiBFftKKee_dCPmbpsgr1cGNioyJ2Jyk0Lmca-k4Q4IuuGlwsDHIwzbY4gbFGcCyjgbAbbNZTSlWyHa1ovg", 
                "width": 5184
            }, 
            {
                "description": "The Father's Heart Labyrinth", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/gSsvF0lU5rH_xRkqRar85vuymbdt-ZNP7YUjyT8MoLSdSTR-6vTdb6d7RJaZOwj3ZimNO96hVvFA4J5bsmSC11Y_4x_XqWWkEmbqqU_8KQ4M6_ZJy7VDuMfC4gV03169FYGD9ARfQnc", 
                "width": 5184
            }, 
            {
                "description": "Father's Heart Labyrinth on left, beach straight ahead", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/y8RkKMFr993C8cR2jpUInRXzx-O0bh8N-Axs_putAr_zvuXvhCGD6kSxwbS3aGc1nMEvQCCXGgG3xLsx8dJKZ9HKFmr9fcWJwlhzJbDBQqCVC4mIaOFcb-R9hySKnDEoJYI33143Y_E", 
                "width": 5184
            }, 
            {
                "description": "Entrance to The Father's Heart Labyrinth", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/QevoOUn260WhQIHl2DmVYA4tC3Hsld1og2FfVfdpOeVtCCbnLlqNZw-OZL7IJ82U65nxv43Jqz1tHQwHs-_qWoL7_R_okrkWQHAx7Q-9pqpvQ5KVSOByh4QLibpPJ2KLJFlMnSYgrJs", 
                "width": 5184
            }, 
            {
                "description": "The Father's Heart Labyrinth", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/40s4VqwjkOrujNQcAJl6i-8z16uva_l6PSLMCI_xFDIecePH2UhDkrLwsRssrH6NyHpb-f2a07NE7nXZBGxisGqLhaKSbBK_9nigts66d2kZpGCZm_vwhggCgeyYkGXYJosfosgMy6Q", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/FI0luXTgOE4Ck5vPMTjDlpBZ7gA57RlBK1Xd-d8edW3kr253BY6Khq8UvwUaoVQJtCvCH6uddlWdYRIKJW485MrcyGRX_2Pr-USKgSyStDm93MS_v8Hwz_mfD8TzUEqAqspF4I7Iqkc", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/SUEHG5uXvX2-J6YTY7ZmEPAaVb7bNYmSivVfNBnrm1nz98DkNSJ1y3qwko2FxZKEvxVf3PYxZcF_3qi-jP78lPg9CN35bLZS3q0ysycJTthPQ4lu5H3hEKLJjybpDyjw9Z-PXFWzlcU", 
                "width": 5184
            }, 
            {
                "description": "Jim Wilson in centre of the Father's Heart Labyrinth", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/EllqWGdFm9MK9tZZDB8v-jtXz1Jmiwm8jL7yD1a2GKv60znMZOHg2ApxkPLXDDDf8HJ955Su0bQTf39gkBBBTluo-WLFgY0oYp2B2WGHO0QNoIS8CFNoHiFZmX26Klpo0fErijkeytc", 
                "width": 5184
            }, 
            {
                "description": "View from Main Building June 27, 2015", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/Mk1f3sq5ZohT9-gYHNn7HNnkMGo-u2SXhY3SYNdIZ8-Q8AoJOspM2nHN0NDUQcL4qbXuu1cpXjdfMG9faHfMMTq_PvXv-mfRoybFjxa778zMJu1Hvf9pZnwDXJ93-TiCEtUOkoSmPK0", 
                "width": 5184
            }, 
            {
                "description": "Grounds at Healing Presence", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/LHZh1pXCBzbCW6Efi-WtYMlZJqrq_8_UufMqaK3iJEHcsE7rDBwsV7S5nz0Fp635djr1VLoX78jtzK31OsdkYb6fQngB2Invz8vPJM5TRjJVp3wp3RI3Fh7poo5ZuQHxWiyx-bW0pgs", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/obQyXfnQtwir02825ZHB6hNLySmuqav1J1D4U5atXE8XSsjMy742vXLMrW-N4wCz71ptl4Qp6Q676rGzsmDEFKf84K13zXXPkYE_auskN01Pn-E1nw5LRbwCrNfT3CRba2B_qISAAAI", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/tZRyk9hEa6o8uCDTeGasXh8k6yEWve5CQA8Ay1ntqrEPptZctEmowpPCzIe1BAsD-6yGchFFvPvZsYkwCNT2_e7kU_Q9laTRVd730acIKdhA13Ls6GTj3ZrP1TQ2TOlICHBOl_CEndw", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/RMtYpyTtzhwuFs3H8gy7hhOK1A-AJS_TeP6bhBRNe35u4gIDdJKbMtzYz01cGBOXpfEEkJYji5i-2tye5O6lpTLONYFqyxXbop9ylfOV9u8lLX4tIkMkeZx59NWOISSbQ-c3VKUw4ro", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/46GKp53lDxXOPKMqFSqqCR1WP0pIAtebQx2n2ei2Jx1AJZscHwE_Cab2ueIYjaWq2PfoUGYR7EV2vbJpZVj031nJs5nF7CdXIamr7VTGekme3v0mOBcWiMCUxA_vIFjBjrfpCclYZFc", 
                "width": 5184
            }, 
            {
                "description": "Dreamcatcher beautybush shrubs near the sanctuary at Healing Presence", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/TJQb3_1R5vxCK1y-dVKZTZRgwXsAtjPTi2Troyt4ObZoAE8wmJH7MSYBacO1DH9WbBdc4pDtAzvxtMRZCG3k9musIc4UM0KTjvSW8KMsDvQ7fFAfAmvCJMsx0jFSWFjwiewrhNUOOeA", 
                "width": 5184
            }, 
            {
                "description": "View of the Murray River from the sanctuary", 
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/wN1TfKfC_9g_7FJv9wmoGJWDA4c1dYKDMhkvGotZ3W_Nbf8AmAyF8SyNwJ_CFqhjQViQxQQtrxkOyHcZwIlxlFqCuWlo7CJSWdSODJh5xzrYyebSbvLEdEDAoN0STAK7nl8O0OnpvoE", 
                "width": 4160
            }, 
            {
                "description": "Hawk-eye asters in full bloom July 6, 2015", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/31-0s7AXM53gXjEA7orkXHVfyiz-zJl-yGH8ceaki3jd89HVrIPbkE5FJLOmp-RlciEF5DOfHykupjAe7HJXSO1e8eSmq3PnOkg-qTu96HVT9mCwh2OpZuv8tjTh_4HzMPp0btChDAQ", 
                "width": 5184
            }, 
            {
                "description": "Hawk-eye asters in full bloom July 6, 2015", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/FaqjcZ_1ssbuw7v9nCWYWrbasccD_OG_2qFHVhSH3hDwlgNdydrrwrEvRNaBFA2qoyhM6OG8ZV4jR2cOsPhrEKSf3NkLYUI35Gm4moxJ4946OxnttLq2h6TWdnBQYh8Yu3jASOBMhfk", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/YnPUdSpRjVm_O-saCGYjOY__Pa-LIrFGrH5R-lQiC4B1lSKdSSmKZv43N_QzHTCb6zeUmt0OsZyXAB_fUEzJJbtM3DA5gaU3Ph7l-YwlcsxR30lA-KesMtTFYYHZGbZe5fCApVhKii4", 
                "width": 5184
            }, 
            {
                "description": "Strawberry Sundae Hydrangea", 
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/7Fp_7Y83rkVzgJ0-AfpD0CKB-zTbFWetX0elHO3ccHV7plIKLz6zZmRfpbDw3_cIpQJN408deoE4STTU6Y7NnTLVdRLuGGxR3mdPAtTZSgH6GJ1IX4imhdzeGY89HmYSEN7AaeXJ5_g", 
                "width": 4160
            }, 
            {
                "description": "Forever Summer hydrangeas", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/60Mo5XUqjTwuekkCNq-KflRlRpnnK6tMLe3_MGxvK85Qd1i6fou89dUCq3Xa4dJF05u4R7Uauldx4dEGaq19EXaKskIOaXbVNF4Zt8YNXbmlzmKgewSTDZ5dQ14W52O21UyLOCZ1P84", 
                "width": 5184
            }, 
            {
                "description": "Saskatoon berries - One of several hundred bushes throughout the property", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/MoSlErq-oNRLtVzg341rhG3fNg8DjNXLpDDI1uD1nL3rE5r855VxpoOWosfVLni7FL392TRBoe_U8q0MQ8iGjrzrsK7ca_aFFidjf55LN0de3zyi-mm7v3VTcA3hKRecUm78_hveYOc", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/JB7sk3Yc61tJ3rk9Vn4rfOAGjBY20_Gku2okvvH1V8ghGXNEsqPMDbuVgxpkOMSXG7mjMHlTn0fRm7cODpVjiE4VJlBTqLr316uSw_i2vUX5TPkkwZWPoMXyomis6rE9WT8FVzt4B9s", 
                "width": 5184
            }, 
            {
                "description": "Snuggles watching rabbit from Main Building", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/l3C58wNXWPD5k2leEY4cLDrGIPLGjRE7vBR0B-MGSQc5u7hMtojkwr7mVw2nbVt_-iUJnLtAHvZalYV1ghbMXavre-6zB9msZjoqzRnQO-q4RwK8zoRrm5gv8VbXvI19KCYTiMMJfKc", 
                "width": 5184
            }, 
            {
                "description": "Crown of Thorns plant", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/9PldCV63dH-eRM3rcgsJJqsvrsRgyh-KMoVj1OllxsTFLTAhoyLcnC4EihU1bMcXqCWNFnhLCZP6Tg-KIK0dUBIco04UeAQWIUVUmOOjhvegVp0KuZi5QFfIOOr2DtE5PRdK8XL81DU", 
                "width": 5184
            }, 
            {
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/g2hrE3bjsszntdpeY-JiO0d-06KNxeLGBk6gfqOkMFs3W6HuIoCHGVwiNU1t5CM9R1otTZX0s_agEg22r-MC5EVkXuCFfGGUkqsE2NrgpElHBGEObYkD2khPgJW4g9uyAKAvITDc-3o", 
                "width": 4160
            }, 
            {
                "description": "Tide coming in  on our beach", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/4xIx1Dj3Bc4vH4D2UI-qtGcJ-6Ih8vymB_OU93iyAuKz38J6kpdIuOtbd_H-c_52ON5w55ek0GAeSJct9wpNzvhqcxadZsXrKQ1sdfWNOiLveGnLJZ6Us2EF9XksJheekMOxUWZBUlU", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/LdaXgiRqaVyiwyxg-LiOyQ4vuApA8qr6RDbZf2uXqIb4kBh6rELVQXDV_Uzx35mFrINMmR2t5L6QsG1VV8sMp4AzPp9jFrgVxXRvX3Pxm9SVCqqgSxiPR6G7pIQ8gOeCjGvqs5-Hfvk", 
                "width": 5184
            }, 
            {
                "description": "Canoeing fun", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/fW1rjuOOuYST101Btewyi1deULP7Bt3PIGbl0dSTJCZVhfaH5cf7zB6BvUTEF6kuJcbDXhRgPkf0DjdeBBRa8GVML2SNB2ySTGXzAl61rbr6FhlPDSXbfhA1OT9jkgsjao9rZ0xMHM4", 
                "width": 5184
            }, 
            {
                "description": "Canoeing fun", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/_7OOMKSBGldrKU6t1FXVseXyMaecxu0yu_t1CHhJ-4zHI8m6mEfWkqa0MprAZc2p4AwbElNfep5RfcwaFOVzkQs8GA3eg4Ubuc2jfFtfoMTF_w2OnSX_4J0bATFsYNm8u1yRR-4epno", 
                "width": 5184
            }, 
            {
                "description": "Canoeing fun", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/_elY6p4ldDbgXT4ymS-tV3NdFXBsZlvfOqsX6TounHZ_d-zHWJFak0yNM_H_vxAcyMeweVb3OXUsEhs3BXEChV0FzhOlqJLJm40bgW3ps5s9t4H4d9Y3cu-fZrj3TkdnwEVUd4-WuZY", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/7XUSCxAm9j0-TGzb8A03e3xXbWnHhiRy5DUNJGMGPVAAsUvTEBttO1Ja7IB13g-Ahza6advLtBuuZbR1tcWToC-KUTGl123lz9rZDbejG96V2ViRZoy8pnD9h5pTzxfOFs1k1SEyI2U", 
                "width": 5184
            }, 
            {
                "description": "View of Big Basin from our beach", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/n3xbIntthAneSsCplGxD3NK6GDJj5SUgl0i8I_UXAzPXWjSJ447D40Sbj18NOh42G7fJMNu_HaIcAJ2rXfztw0zESvAJYZEb2LwQv3FnVxgDKj8EAFV4VMVTgAYIArXX9Dx7m6M9P2c", 
                "width": 5184
            }, 
            {
                "description": "Family of Canada geese in Big Basin", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/z28EH-CSSk0L_YbWzF_uw9DPwLUA5SU1l5YxEhtMd4NnZ6my7ExORDy8GreIHzInG0ojvZTlt-8--PseCAgmnDoErIOp0Eyt33cn9M8TdabUEroazPtxEl36nr-bexXVRazMtMVnnIg", 
                "width": 5184
            }, 
            {
                "description": "Beach at low tide -- home to lots of mussels, oysters and clams", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/tOINSDtMzJCZZGiqqG4J27VimGwxCd0P3wLEgDk4mYgBUSSVt3rmgau81f7xBcALHIdGvC6FzsVptmXL_ZD8rEaNK8l0Qb5W5ior3qzUCKSHiBEcksDeis2aumzi2u5w-UxVM7VGeos", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/nQvESMzmd-Lw4uI6J1e4A99YUZnvUhYlRAH1nCqwZ5MebdbiDTSkd7sxIHSdSCoTR-9mDfLOYvRDOAtPmFiuMwvv5wMFD0u-H3ZEbzSzOWdWrwP-bfKYTT8HNOqPefr40xe31nL5LXY", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/kyXMgCvveOYmc-ZT_7Kq22Uzyj_NcFOdXJS_Qulqx8AZax4CHPGXlfW9UAUDstwqaMaqDuExcWDFJMg5YMQ7nBbBW7M7o8zgYC7nK-mx4Eiqu_X1hj1wdvZ4xtSDv93ACeMR4DO-yEs", 
                "width": 5184
            }, 
            {
                "description": "Rainbow over the water", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/x--WY8oQqKIR-xbJuK0nB0uetPiBPlLFgpYijvWMny4VoVRBNn6v31GTJGHdjNAmYYAAsNh-zDF1ShmFaWdpGmVoBbzjg2n8bQJz-FF4f1ZxeHhH-mzvjZo21xereEQRX5liQgVPO3w", 
                "width": 5184
            }, 
            {
                "description": "Rainbow over the water at Healing Presence", 
                "height": 1863, 
                "url": "https://lh3.googleusercontent.com/QRcIg0yNcGU6jp-6mRmUekwbbtEZkgZj3y1wJJzCZMGJvi7ykZIKxFIpU-HoYF4iTPgguSFs66sRH6Zy8-41HMh7OsJ6JYQu53ULiPcVXQt7_xmMulngCbkqr3uPjdZiEbOKKGv7tfU", 
                "width": 4211
            }, 
            {
                "description": "Double rainbow over the water at Healing Presence", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/jbPXADmME3L7uBLLba32pzTYsLgpPONnuJZ8CCzNJ67Wb3ocH-SNYI2G8gykUTCnyXBGpWzyffPPh5u7Eg0Ctmaa_voytq6WD-yuPGfFeaME5ZtE48YO-o_-mnFh8p--QjC73ZwTZx4", 
                "width": 5184
            }, 
            {
                "description": "Water view from sanctuary at Healing Presence", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/GZjpN-LDoDTwRcAmaLqLzFpZue7V0iz9W5vElMHf65Mh2VkTzp6Yqlw7FQ-9b5cD4zmIrwl63eChcrP5zDsa1YOItXSxGRWg0_MrqXuVxXog5F8p-8Uo4wobFqxRVZwerTLhWBy5rq0", 
                "width": 5184
            }, 
            {
                "description": "View of Murray Islands from Healing Presence", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/WwWiMCG1n4G9ktoCFVRYLTE-DcT7Xz4gNCbqGIK5BEUjbb8x16t7D37hrJrBP-2nbNHIutcH35NULd4xYFKnfysrU1yUOZbZTUoRrwlWEj3VCGS-iBKr8ovt9IokuISZ9YjCdNbIdMw", 
                "width": 5184
            }, 
            {
                "description": "Bald Eagle on our highest spruce tree", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/Mi4KI_oZhRKSjLEjayp1B6r4enfFCHYLDjMkVKeBb2NYsQoN9PVVdEDFWEQUQGiSukiyC4rD0Q5EHjyzpt5SpVRGEcoD7sPDqtdu9biYak_bbQ8Coe7Sy2iGlToxnqI-Mlr1zmbRHcc", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/pcszEhplHyROrAeMIenJ8_3nvoofmCM3LT7mEHWeLogGIn15LyOVpgzMATpVGxdeal6PRST1sTKUIz0MEyumAYOVoKeLdyM9vO26-7wl5dZs8l3kDJQ1a_L9wecGKQ41lssJ58_JtBY", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/4J3tGIYVniGna46bPdaw1DZK9ovLgVvtBC7DiKqox2tGL7QPULotTCeOolVK0WlPtvFfNwpw2-yWvwe5O0OLQqqTyNgrb6QLOD4TjJtD0ir8CQQ47h38Bx043h7QhZjB2JaYQvTRiC0", 
                "width": 5184
            }, 
            {
                "description": "Grounds at Healing Presence", 
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/etq9ccp2pwYF4N1GQ3Wuu1SFfGBCwPH5iVleB9nYC9Z5QwI1VOCM4pJvMuyazEmlF6ZG7nGgbbOCFOLCwv3IJuumTkzKqBzFLlI2uhYRAjLH31xHwpufkjk5liJ1CXqqAUVpbyGSWCI", 
                "width": 5184
            }, 
            {
                "height": 3888, 
                "url": "https://lh3.googleusercontent.com/VPhQwpFlGQnioN4jrglVglMPCXus92CVMa5mavyOt7SN7x5KzFXrvuo3ucsMoJ4_66BKVXdao9rUcyECSMgJqonhGD5ofcu2vh_GBnclqkdHwruVXaq6OvZ-m2WQlVTowLTqlErBpko", 
                "width": 5184
            }, 
            {
                "description": "Limelight hydrangea hedge", 
                "height": 3120, 
                "url": "https://lh3.googleusercontent.com/jTKQ32MQ36TopnwDuyTdOTwBIFDIJieaASkih2EEIYw-5b_ILGL_Stq_7CTIjNMpL1I4HCpp0NkEW5lPYtWZLtDg8I_DaL906zfGUKfzDqTC-LZGrl0KO5VGpdTFfE0FpttLGvaSB4k", 
                "width": 4160
            }
        ], 
        "title": "Healing Presence 2015", 
        "url": "https://lh3.googleusercontent.com/MoSlErq-oNRLtVzg341rhG3fNg8DjNXLpDDI1uD1nL3rE5r855VxpoOWosfVLni7FL392TRBoe_U8q0MQ8iGjrzrsK7ca_aFFidjf55LN0de3zyi-mm7v3VTcA3hKRecUm78_hveYOc", 
        "width": 5184
    }, 
    {
        "height": 2448, 
        "photos": [
            {
                "height": 3264, 
                "url": "https://lh3.googleusercontent.com/5_NoNDdsnHHSon-vHVNYiI5EArVi6fni90KJ9x3zSGEm5-k2r24-gzCyxtnClhD5KXVtVhTfeCAUUfH6x11h-rHIORhBTRzZ_i422_o7VHkxXenOUqWUDhh-juVFTS9KU5c9Uhp01RE", 
                "width": 2448
            }, 
            {
                "height": 3264, 
                "url": "https://lh3.googleusercontent.com/U5uWM7khUw04sI591JMuqFVvnj8MocEBAkkvpq-EuM_8i3R1ng_gvqgB1NNpIzr_zM-0su66GESHdBvAhiCL3UARqfJnliKPdEuEWl_1qRh8o47ju94quB-pEijW59GY55Yq78QXpgM", 
                "width": 2448
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/lHedCPzApy2rur5qq9YFWlpjHOmvLR6-4_lrrLNgCdRly2_q1W0e4KYXiw5mGIMiZYq6dpwMZBh5z2Y_QgJYKN0Qi0jjjfvgut8_RyVqgR7eRABVDXjrtKVpuKAPoYslaDGPsXYMj90", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/YozG3tcodPGa2Q4oVhsOpNM_ThSplv-P1mBeCy6uUc4jBwyhmVUOediryK38yUIG1SXrWwiPbL3AXk97lw4rx4WEGPpfj64HjH2we75MTAUYI4IyBO_cK08mojP3-ra35bnLz1pkbgM", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/ciDk5P7c340BahDyoPNUfwDCogCq5KqeORPYQzlpREnjMIcB30v2dwCgCTBW_G4RQ4a1YjL09J9YRKLuxjxkDorUxUqLGz-mRHcXy_l9smWF8EycMMdI1Sloa5RqRk3fHloLAPiyx3M", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/fIi5hzaEO-H7UXUkITxo27N76W_AOEN8OtiNf8P1bwu-xQ40RKI_WHIc_UpLJhlqbrG6_-r70AE1O_6eqwJ-iq4-Z8ReFCUxIWDZTyiGJN46ElO5WE9KNXr9FJd4eydjoCCkSBSgaEc", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/VK73dqa2Lti-IyyJ0SeKssExYN_AVDD-qx17UZ9dLQ8AZK-55jEUMJh2dw__Xzn8brBSq0QyQ2xTp2eQBMKsu2_M5eQpTeONnypcN2N4aFsTOTzNyah_WGn47AlACL_Ul27p0xsTeDY", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/OtcZMQ6JzYHPXqxuIQKfW4a0DtPhwqI-h0ySq7dmnrnEoLXiRyBxr9YhVz-GVnYwFp5b1soj6zeHU2Pl2NJZ5mtgC9Ce6OoEQGQRgQmmq9I74nBYWkidG-sxTKlTTQqK0hDwXdcsnA8", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/eLw8nzsor-UnTyH8QGXh2JpA6LrabDtZmDvtBENf30qNdJTNQNeJb51EQm6JPCDqAltx5ZU2ZCCdkyVRDd2KiUNrURxJjzt5Yhh2mGB-y3gRm32q3BUdr1YunBq0fx5Vlmz4aVDK7aw", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/6-exN53_rWuYkksWDp3its1uSndJoSEx1hUs6M51tms6KSpGQocPZrOV0Sv9wtmAVTrTak9Tjo8I3s9gWqdL72jQFM64VG-jd-Njmk81AfnNcKbxCd2awgnrT674oIKQMChnCuEcLlg", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/RVpRmnDiZGPNO3-l3dLYjoczJa1XqynDN1Iv-Gf9NLHouE6vaD9Q60VZXxR1MD_t3bdpYLKbjshv4yODt-0nw_dajhOXnXOJrDvmKzC0td0vmMgKqJFSiVzajB4QGqeEsFF2KecwtA4", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/iOrZ3f-BeeQQ3GwUFIKi1SvxbSv-ckOZVtqM_Hinrr2YjIa1S4Mml-9ErndNMZ4JkzAOarZsog3yR-FKDUvJykfxW29bcgtVcnl9s3sXro4RZzKwVml0M2WXnz5VG5iT2tGlFa4-hc4", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/uZNPi8eyQbnCoNc6l3kLGB7lPvweaneqIDScjbEGOWmKotwLmaU50OLaq7WAVCmj59sAT1NFEF_CMS3lrdC9xTgZeedoAOxvlTOsDgT0IUP94F_IYyxOKrdKu5loyewn4FH0Jh28jY0", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/7h_4pwvG78ClF6l4s1iWSQHkX_iRQvYGngoEOkGIR4kOVhvE4b-NOFv5Xr1qDVkL8Ka5609nHT_T2UzIlpAEX_tkvS5lfMm6l02UtohupyhxIvgzBE67jvzDu5mAbXXnP1Iol25iYYs", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/_0eelTFYCxdqaYNkxDHVZ1otfdl1q0j-lSxVy-9JcwAwdTbhzk8h2ZnCasWtYsDOw-0hDaR4jnd80-woaaXNBIrKsuWj6TqbOgZvK7cdVJuGtSkN9KtcGsa96Emk_OQsLuNt7N_F-jc", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/l2p6pMF4l-wqW77KR_OvgGEgkiUoUwRs34pIYg_YeLyblIepYDwsEnVUQbIcPE2p3ZlyLiFhoRZli-zZ02CJpScTl8mrZHDn31ArLM7xfaOr9THa2HG8-owxp5FsBXDPIB7di7Vsmp8", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/VMkdb0HnCnX-DSp28WCHMAN2mRctWK2cy6RYkr6jcqbWY85Pg7e5S9LD7svsuh2nfNnj9iPR14Q8heLWR6-rcM6TE2CXZRmlCxs92ai_tk7AIZ35-QLxJLt8V2VIvNown8IhTrrkLKw", 
                "width": 3264
            }, 
            {
                "height": 2448, 
                "url": "https://lh3.googleusercontent.com/5dBuXn31zDFoYErQlTJovtCoqSzFjLzK0bLyTxbLjJvOMPYweSmTrWsa-NRbqol1q022Z8DdLFvtIp-iqqbarnL5vM6SH3rc5fak9fHL-vj6wO-ijZwlA68rNqI4_GcJ88kyw5WohdY", 
                "width": 3264
            }
        ], 
        "title": "Autumn 2014 at Healing Presence", 
        "url": "https://lh3.googleusercontent.com/fIi5hzaEO-H7UXUkITxo27N76W_AOEN8OtiNf8P1bwu-xQ40RKI_WHIc_UpLJhlqbrG6_-r70AE1O_6eqwJ-iq4-Z8ReFCUxIWDZTyiGJN46ElO5WE9KNXr9FJd4eydjoCCkSBSgaEc", 
        "width": 3264
    }, 
    {
        "height": 768, 
        "photos": [
            {
                "height": 1073, 
                "url": "https://lh3.googleusercontent.com/PZOxtHhqlzhLyQ9ubEszXWQgj_oRBQwWccGsjVtCPqTjbnT9BOuFHqsw8w-SXq4RVMdzuhUtO3x50J8PG3QUTQ9DN8EkUqUMk-vpEZoVhFxqVnitEcSNK9UfU1lP9ivrFDMw-0WSI4o", 
                "width": 1369
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/jxl0w9FAnqLYzLJ9wH4PT4MF4qJkhBut38QqlYQCX6EIR-IRwKpPBbcSXAh30jYonA6eAnu_3v_VPR6dc6OvNe4Xi_uYXzajNy1xP_wN5459f4i7vkpEK3e8XJ_rKJ01XI_d1AYleC8", 
                "width": 1024
            }, 
            {
                "description": "Entrance to Healing Presence", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/Zy4QUT5TSt5vNfajc3EqbXTLU_UltTqaEGulX6XT_9qaJMMdLY-F8pLEYOoaWDibgA1axEn3pmsUXPq0cTYW1HKrPNvU3eKLzzsYB-SFHcuY-yrqJdPb5ZKBd3lqhW7G3z481q_4Qxc", 
                "width": 1024
            }, 
            {
                "description": "Flagpole Garden", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/HwegjZMADXZBs_eLYDcULsHaoyo1soc7h2CsDBG6nBgsRLvrCaO2gEWPkRIq3ya7Y4JoxtVF6wj2yiDWAsJrleB-FSoe-BC9g-vwQzQc0QZw0vkdelyJZFcwS5D47vMQChQF3imYj-A", 
                "width": 1024
            }, 
            {
                "description": "Main Building and the Hope Cabin", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/ixYrNfz9QXshR0scC_zFDxoTyitOtu271pS_HNPkqNdPsri8HzyR8i0BgcTqFIQkGV02eddE8fWYdWGuUEwb4rFBe_BHQp8xTWo2BTb0roiF3ydZyX9pacFkrGgSycxJRFMGDnAeuqk", 
                "width": 1024
            }, 
            {
                "description": "Main Building", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/mYYRAIzDIJS9zbjOVSdyvxsPMm6j4BQhiwBG2gPD8xc0T3U0yLCyyVNxBQH6iUhfVWi2GDXfrw82AedDQWGmk-uT_vlx8JfxnuHZAh8TIUFxHp-B8I6QyIggAb53By8Z06inm7mowVM", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/mYxWEa22w27Kv32Ijk3IONbHuxdQ517UEy7TWRjx2U3WUZRB45_OWRnpJM3UWcqn3nopIGdEWWRZC0fW5M4oOhWV0TkRLY2yDQ-1TnptnEN9LM8q2CoJzc1QxoHQZKhufodRHvfEPGA", 
                "width": 1024
            }, 
            {
                "description": "Rainbow over Trust Cabin", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/MNwKpmzX7m9qssY9x3fly4dwfzl2ZrW7F47JmWvNovrqnrAj4WoZBFwrnFCZeWMHONItacoxo_GodJI-1jQ79UIIV9_nsRnei63K_YdeOpEWbjBSsjC4kFS9OodH2nZedyfPnfA1cEY", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/OFUh5t1cCCw35hmRN63K1qgcQzTx9DQxl-mFnzkrNEGcSGU7sLXBlMPfrcON90ePkmvPH-eYdK0FGqXCugPiVttLgJ-OYgpz2WQ9DeGsmQCwYAVQxMECOZFDPI4XGJwv54dWhjxwrs4", 
                "width": 1024
            }, 
            {
                "description": "Hope Cabin in the Winter", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/TasPFz-VEMvZLmn7yViOTooAubZKJmzf2nyTSzZu1bytP8REGikjTFzfcRrMqV6mGguBB2kqh6q_y4hkgSu3vqMiG4yba9Li_TPMkZYbvb_goOsWnyBG4PFBIxdicVlF8ZFZohLI-VQ", 
                "width": 1024
            }, 
            {
                "description": "Jim and Brian constructing our new steps", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/R0_EtD5tMR2don9jrIOuFh6rAB5ZM6LxFK6ZPf3Y7-DVMu4Xc1-qYqzwvKWwY7nk1C-vdXpc2xuJRfReNb0MH7lGtJU-xPZ-4VYM3e-XZJb7h-Yjkk8UF8MzcIdmxiK6F8IadG7myqc", 
                "width": 1024
            }, 
            {
                "description": "One of Our Wild Rabbits Enjoying His Breakfast", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/HQaVXSJNx4_nYVboTdKi8nY_jYGRV8Zawvp-EsVfrRT9FYopQBQjDPvtGgESY_apQeoL_jpHd1NE4mBegIym2r7W4lPxgb45WKH05rNnsbJI5LWdR8edOH-9A8ArmrDkNhyYxxzGe5Q", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/TBYPtMLLWSV0r7gjAsRJRQRIlILQAKL6tpVp1n1HqUJxKisBRDMNEsu4u4k0zMS2vSyu5cVVcqBQRLE992kpoaX8Cs3xMAy2Q_zv7rTtE_CmeYQdGeYQ6dubYgP8Q61SZy5mu2ZDxd8", 
                "width": 1024
            }, 
            {
                "description": "Jim and Barbara at the threshold of the Father's Heart labyrinth", 
                "height": 480, 
                "url": "https://lh3.googleusercontent.com/TT2rFY4stRx8L5VkGrOjsRzJem9JbIRdKTZalR_5XRFl1rr4dlCU_Qgw4g1fUWRmsAIZC925s3nevgqGfZWO3TkcAkKuxokC8qRO_qaKcna7ARlbSk38E2hM_0thaydt2B7GyYLe4u8", 
                "width": 640
            }, 
            {
                "description": "Group walking the labyrinth", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/sNrizlZDCzqOx2XDAz2bwTLJcUD9AN_TWgSoMCRWgBVe_HksJ87aD1ydDFstW2K-G2FkP9H4Tlsk5JyencohesesFE7ZRVuEAv8Bo4m1UCz6UACflUaT5Wm5IcfKl7ZSGDupBPihWSE", 
                "width": 1024
            }, 
            {
                "description": "Entering the Father's Heart", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/nHE58X8gQV5vbaPglfwz7UMwWd4YvFz6vk70zvVJeh7ftXp37rd624bKq9nps24-KP98eDr5N7fjDbx7KfSvrjb5vc3e8_cCGmuRRlGM0eR6xITr_fHvCcoboCfE12i3igkYjPZ6ag8", 
                "width": 1024
            }, 
            {
                "description": "Centre of the Father's Heart labyrinth", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/thAG90nRpChKQ3otsCeR7rqv5oMRy1GYd4LykdA5gJmxRLFxzZB9tESmW8sRemz7mvL0yXowSpeI8uk6e8GY8M73MQhOZi40_x1KEr5F-VRK5b4hPlX0DR_JLQD20jNX07bEUoKt8-c", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/dVbJgRuazs3YobmyW3DmO6V1KPOFbghZSqQMWn1s70M7fI4zUS_2gUCxCUKZsdkii9bo9u_POSn9Vzw4G-XnkbYxj5nRkiUmM6ZVeeMzcCTnjBpdswSlIDuwwIE_UCAQ7b6AcrBMYVo", 
                "width": 1024
            }, 
            {
                "description": "Chuckleberries in bloom in June", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/tKIeDdpdAbeNtwXlaJIiTptI1gfdEWAaIt3rBKy6K82Mtq8Wv2Hp412oyZDnqd1eQ6k_Lx3I5Y8VMvJN3rN4a7NEuHJAlCnVUjS8Rj63xEu31gcM06ZcYTXgfUZhq0GmTmIPspmhqOo", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/HGEyZHmjUGNxUJttRwNU9E6zpyxQ_-COT-xsbSOu5Sl_4Av5oA8Vm4hVHQwzjEYyQmD38fq73VTgblB8wNKK3S8HdMJLP0NLb9o_oBmeTcXY3eI5w37-FBMeh6_AEtMbDKRDSXR1fDM", 
                "width": 1024
            }, 
            {
                "description": "Lupins in June", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/gLXLm3Iuhlhjab5d5Pa4PI1yUuuqgEOvI9F-gPU9zax9RdMuUqAp20oRP3Aljh1AI1ncbiz4rmXIAF6bkPBnIdXfDftLwr1QXRd_Bc4Jkz-UW9WXB_54RK_Yivsawfk3rrP7d7gkU14", 
                "width": 1024
            }, 
            {
                "description": "Hawk-eyed Asters in July", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/PXE13L8OzGOpfBitiSjdzy_pyff1lEAAFqWAYYu3eq87YXMrTh4jkGyPTeQ4rMLihnWWKq2QTgypBF7UY0lnzlP5bwVxA8i8XyMtdK8SYzOtbGjbZo4tH8rVBzN3Qhnvxk83AK6yN6A", 
                "width": 1024
            }, 
            {
                "description": "Wild roses in August", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/_PkmpVtHjXXwa73XczgI5U-3j3Dngpz7BvpVMQv9d_JODn4hpyLrmzUIPKv3I-j6w0zNery4mfQ6C64-Vz_JYg4vHaMrFnT3Xs6oa1XGk9gn5Uq74BbzWv38-SefaQA-f4t9oGbxGq0", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/Bq7pNZDw3I9bLx6x9SsLlHJ7X_c-zPM5BVg-epZnvfK12YneKJiTZ0W0mAqaBKgUauuZSxCb7F35FsSfRp6zPdNNHw-SEnJ_N7QxWkZGpG-W2Q_HDvh-rIB06bhzYNZutTfYkl5X_Y4", 
                "width": 1024
            }, 
            {
                "description": "Clamming on Healing Presence sand bar at low tide", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/daeQIXR39i7691sI2oJxc3wLJsOi671UpfdovbGd6jfJ9O_zYDo6Sfq7V3W7uIMP2YSQOLxXuerNgXzGzdOhGIDG1KAOj45I3wEpAk8tn3CFHxZlyLMT9uTbDoPBz66gBbEvlaRc14U", 
                "width": 1024
            }, 
            {
                "description": "Jim and Barbara clam digging", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/xQPvC2bsOJb_M97Q2wP7kO02anxWCI2WVQZaZkT_-CHkkOOf83wISGIr_SEcEpBYCFQOqrFhnQPN9dOGdaUHFsTEVhRYNdxQJBsDNMxYRLxcCxzUdfucewSJXgY6zM5ixtXKniJaTBs", 
                "width": 1024
            }, 
            {
                "description": "Clam digging on Healing Presence beach", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/6elutLKo26c9NvWn99R7NEgvl0q5jWP2dgkVGk5FeM9KkDMQ9oJJEzxrXfZfdRsHBrilk3y56HfI_AcRDLdccPyrkmyv8eeFLKySBYy3NY9lJ65LANgvW8bamWKV4-vFI3RaVUnRyE4", 
                "width": 1024
            }, 
            {
                "description": "Canoeing in Big Basin", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/sIKhuG9eSo40QixVKhPuy1VSsevZA-shATNIzVdah96g6Ey1pdFUrpRNjwgsLa99YCm5cRMr16uMguW1ZGMaprBmyGU40aZGAX4ACaUQtt3bcy1WR5HJZpDRWwVQJ9_iH9Vj6XEXgvk", 
                "width": 1024
            }, 
            {
                "description": "Sandy Beach at Healing Presence", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/X-yiYp9EY3braNwlr3cdIto-tF97gsMrzJvGmB09HKg5ExsXkOPdhDB9o_7_Lw5UqmgATsYpYFwgMJ-ZngHHFXCUcliHzWKdbgWfbV5JVTkliNl2fgepePvd4ryINnI5Zd5MWheDfRw", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/JKCCQHASDKJ7cn-DN1yjPwri1SJEgk-IUi6K0nJ7K3kHlZ5W2KrXzfbm8_S8geA7mQVS12_NuNfQaaLsnUZYKzMH9KMu9-6PLfziD3oCLLb5pT1-FmSVtYM40FHdF_BJkJqiH28Scec", 
                "width": 1024
            }, 
            {
                "description": "Sailing in Big Basin", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/gKX1pu4lDu4gabOJuZyA1etTy-2ktCCGFMpVigSEofEnuA0SQ9iyQBHNJmgZCbyI3KtQqRdIWLjjndA5b7OGceA7K_jdNe0CJmRNttr_TTPxtQ1r8wA-9s7DfmdfaAvGaZB6VMouVmU", 
                "width": 1024
            }, 
            {
                "description": "Just before sunrise with Main Building and Hope Cabin in background", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/whdW7muWOOWJ5pzuN7hny31wm2q3n8-rxiaHySit0Uyl-3yKCS9UyO4okWIYAFuERRzhTdXyKAPnklCGu3JLIYEEJ_GpzOk4r5QWY2s73_kkd9_zuSLv7rQiEfDv_wRpQSpTscnA_hc", 
                "width": 1024
            }, 
            {
                "description": "September sunrise at Healing Presence", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/Aamg0uDB0PNnqqpisdOswGmJq1xbGXQDK4adpQJr8jVqG6-DGqZzGiRUxsj8mRaxEb1hj_sXLK8kOFPfA7IQpUcxNCAHAoSAu2-WBPBWoOBJxEWSw940RQlj9Q_cwHYxoHaX2r6NmzE", 
                "width": 1024
            }, 
            {
                "description": "September sunrise at Healing Presence", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/1vINStPkNNNoVXI-Bx45_ILUJwGffxYCkVUa4WXFCrS4k24ejFpAOz_uMUUo0O40hBtUNQKjjlV8p3qgWbLBFtgxvbN7ANa_7KoGCJOU6iBR1B15pRo9c2n3aNjpUBQ7QNcofH6bHHk", 
                "width": 1024
            }, 
            {
                "description": "Canada Geese at Sunrise", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/EIudbBhTXZzXNXFVVAuVAPbFdPTeQ9Knh7Wlv7m0XHjthBz2BQdtx9uhmmJgSW6mhVcO2OOXVUroJFLzXp7pnC_Z9XpS0ekNp8C8uctPYBJwQmQSNTxaI_X9-tqi6V0QX8HStRsbXcY", 
                "width": 1024
            }, 
            {
                "description": "Ark of the Covenant sunrise at Healing Presence", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/Ayc4QdC2WqRVy_-3XmK9nZ4IxS9v6925NVRKzqQgcDc5l5ZZebrbkE16tQ4YOEj2Ut-7d1XGzphHA_Cf6s_UE5fuGk-mKfILob2pUbrSKoEzrxQFX0gJKQXOghBSvpq-RmWYTc5pSaA", 
                "width": 1024
            }, 
            {
                "description": "Another gorgeous September sunrise over our beach", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/CtzOzy02vKexNIjLdsPeSDlTul6omqby1OekXn6qIhTAmyVbKgQx71BlNL4uN17mliOqSLaGOBRbgfO10rASB4kANpxOrXdoHWQnupiOIGX03HMkZrrLBn-UdRB7lfkUIiHghZBqEt8", 
                "width": 1024
            }, 
            {
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/AnH6sbQ-jZ73XmGeP86dr4eCRQi9Tpp8iZuYNihPJD6qRYSN61x1XF2NBuep2-V7ZLgP1sImhskABxC2TG41SvV_5y_WlL8NVS5AX_ZD4W_uqR9sqCzWijfEpDms0XtZ8Ii98VUK1zI", 
                "width": 1024
            }, 
            {
                "description": "Beautiful sunrise at Healing Presence", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/kDe46zxpDB1CwBoMYAWs4MGHl-7A2rBpO4TmkAh_OYQgF8FI38uhq6rXjC8c8ApRdmjinGACoN65oAsFe-YdTLFH-B_bjEYXwEK3XF4iizPu1QzZD2ZjGFK9K_lEoQtc64dO1xIRSKw", 
                "width": 1024
            }, 
            {
                "description": "Magnificent sunset at Healing Presence", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/4FqdgCgYz2JVSZmiNAj_gYqQUMU7anidjJovF1XfUd_AXe835ZrqO3J38F7Re6s4jeW6TSpU_QmoHyxnAmuZWFEblCsQRWt12bYjJKsILLJFXieOTuY5sLIo0Bg5S6lUUQBuscgBPi0", 
                "width": 1024
            }, 
            {
                "description": "Fall sunset over Healing Presence beach", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/m_gq722OaOML0442nyxbeRk-MSrgKRI2vyNEuolU9KO5hA_VSOzEBhS_VMd0Mc3WyATxuJHTE9HT_9-ACezKYBvWAESLN5fl-hjcMEqRXAG2A3YHVNN-cPmm6kuzY7wCMKpWoXo9rTA", 
                "width": 1024
            }, 
            {
                "description": "Winter Sun at Healing Presence beach", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/YVLgS0pqUsJoMzM71CODN5zkHxnlJRLctGxxP9P3rIhov5tXacVPxPdjbfPVYt2z-3m50kdcSZRlBnJNmxcKjmZC5S4E499IYYcQsJ5u7-kBwWgOma7TzYcah3BeSfmn8V9UAHnZtzg", 
                "width": 1024
            }, 
            {
                "description": "Walking the beach in December at dusk", 
                "height": 768, 
                "url": "https://lh3.googleusercontent.com/xLSm7y96d0VF6GuwRBmMzEqzCgZ1h-5ZpM_ua6uS4VIKV3g9ZRYzf43DKTsr7Mc7GBdPK6bh8DPTYYtRwYSUx2GhsCH8AdZe894QiGmY9O72D8fgHMEzuPlF8MCVmbvHv9X6snNUVmk", 
                "width": 1024
            }
        ], 
        "title": "Healing Presence Looking Back", 
        "url": "https://lh3.googleusercontent.com/1vINStPkNNNoVXI-Bx45_ILUJwGffxYCkVUa4WXFCrS4k24ejFpAOz_uMUUo0O40hBtUNQKjjlV8p3qgWbLBFtgxvbN7ANa_7KoGCJOU6iBR1B15pRo9c2n3aNjpUBQ7QNcofH6bHHk", 
        "width": 1024
    }
]
''';

const String kGooglePlusUserId = "111992636055420475371";
const String kProfilePhotosAlbumId = "5986578878807970705";
const int kGalleryImageDivWidth = 202;

typedef void OnAlbumSelected(String albumId);

void main() {
  bool loaded = false;
  html.document.onReadyStateChange.listen((_) {
    if (!loaded) {
      new AlbumEntryPoints(kAlbums).attach();
    }
    loaded = true;
  });
}

class AlbumEntryPoints {
  final _albumEntryPoints = new html.Element.div();

  AlbumEntryPoints(String jsonString) {
    final parsedJson = convert.json.decode(jsonString);

    _albumEntryPoints.children.add(new Header(title: "Albums").element);
    for (final album in parsedJson) {
      _albumEntryPoints.children.add(
        new AlbumEntryPoint(
          src: album['url'],
          title: album['title'],
          listener: (_) {
            detach();
            new AlbumPhotos(album['title'], album['photos'], () => attach())
                .attach();
          },
        ).element,
      );
    }
  }

  html.Element get element => _albumEntryPoints;

  void attach() {
    html.querySelector('#gallery').children.add(_albumEntryPoints);
    _albumEntryPoints.animate([
      {"opacity": 0},
      {"opacity": 100}
    ], 175);
  }

  void detach() {
    _albumEntryPoints
        .animate([
          {"opacity": 100},
          {"opacity": 0}
        ], 175)
        .onFinish
        .listen((_) {
          html.querySelector('#gallery').children.remove(_albumEntryPoints);
        }); //, {duration: 500, Easing easing});
  }
}

abstract class HtmlWidget {
  final Function onDetached;

  HtmlWidget({this.onDetached});

  html.Element get element;
  html.Element get attachPoint => html.querySelector('#gallery');

  void attach() {
    attachPoint.children.add(element);
    element.animate([
      {"opacity": 0},
      {"opacity": 100}
    ], 175);
  }

  void detach() {
    element
        .animate([
          {"opacity": 100},
          {"opacity": 0}
        ], 175)
        .onFinish
        .listen((_) {
          attachPoint.children.remove(element);
          onDetached?.call();
        });
  }
}

class Header extends HtmlWidget {
  final html.EventListener onBack;
  final String title;
  final String backText;
  final html.Element _header = new html.Element.div();
  final html.Element _title = new html.HeadingElement.h2();
  final html.Element _backButton = new html.HeadingElement.h3();

  Header({this.title, this.backText, this.onBack}) {
    _title.text = title;

    _backButton.text = backText;
    _backButton.style.cursor = 'pointer';
    _backButton.onClick.listen((_) => onBack?.call(_));

    _header.style.top = '0';
    _header.style.left = '0';
    _header.style.margin = '4px';
    _header.style.display = 'flex';
    _header.style.justifyContent = 'space-between';
    _header.children.add(_title);
    _header.children.add(_backButton);
  }

  @override
  html.Element get element => _header;
}

class AlbumPhotos extends HtmlWidget {
  final html.Element _albumPhotos = new html.Element.div();

  AlbumPhotos(String title, photos, Function onDetached)
      : super(onDetached: onDetached) {
    _albumPhotos.children.add(new Header(
        title: title,
        backText: "← Back to Albums",
        onBack: (_) {
          detach();
        }).element);
    for (final photo in photos) {
      _albumPhotos.children.add(
          new AlbumPhoto(src: photo['url'], title: photo['description'])
              .element);
    }
  }

  @override
  html.Element get element => _albumPhotos;
}

class Photo {
  final html.Element _img = new html.Element.img();
  final html.Element _span = new html.Element.span();
  final html.Element _div = new html.Element.div();

  Photo({String src, String title, html.EventListener listener}) {
    int imageSize =
        (math.max(html.window.innerHeight, html.window.innerWidth) * 0.95)
            .round();
    String photoUrl = "$src?s=$imageSize";
    String thumbnailUrl = "${src}?s=$kGalleryImageDivWidth";

    _img.attributes['src'] = thumbnailUrl;
    _img.attributes['alt'] = title;
    _img.style.margin = '0px auto';
    _img.style.display = 'block';
    _img.style.cursor = 'pointer';
    _img.style.verticalAlign = 'middle';

    _span.text = title;
    _span.style.width = '202px';
    _span.style.cursor = 'pointer';
    _span.style.marginTop = '4px';
    _span.style.marginBottom = '4px';
    _span.style.display = 'block';
    _span.style.textAlign = 'center';
    _span.style.fontSize = '12px';

    _div.style.float = 'left';
    _div.style.margin = '4px';
    _div.style.height = '220px';
    _div.children.add(_img);
    _div.children.add(_span);
    _div.onClick.listen(listener ??
        (_) {
          new Overlay(photoUrl).attach();
        });
  }

  html.Element get element => _div;
}

class AlbumEntryPoint extends Photo {
  AlbumEntryPoint({String src, String title, html.EventListener listener})
      : super(src: src, title: title, listener: listener) {
    _img.style.width = '202px';
    _img.attributes['src'] = src;
  }
}

class AlbumPhoto extends Photo {
  AlbumPhoto({String src, String title}) : super(src: src, title: title) {
    _img.style.width = 'auto';
    _img.style.maxHeight = '152px';
  }
}

class Overlay {
  final html.Element _overlay = new html.Element.div();
  final html.Element _img = new html.Element.img();
  final html.Element _span = new html.Element.span();

  Overlay(String photoUrl) {
    _span.attributes['class'] = 'helper';
    _span.style.position = 'inline-block';
    _span.style.height = '100%';
    _span.style.verticalAlign = 'middle';

    _img.attributes['src'] = photoUrl;
    _img.style.opacity = '0.0';
    _img.style.zIndex = '11';
    _img.style.verticalAlign = 'middle';
    _img.style.maxWidth = '95%';
    _img.style.maxHeight = '95%';
    _img.style.margin = '2.5%';

    _overlay.style.opacity = '0.0';
    _overlay.style.backgroundColor = 'rgba(0,0,0,0.5)';
    _overlay.style.position = 'fixed';
    _overlay.style.top = '0';
    _overlay.style.left = '0';
    _overlay.style.width = '100%';
    _overlay.style.height = '100%';
    _overlay.style.zIndex = '10';
    _overlay.style.textAlign = 'center';
    _overlay.children.add(_span);
    _overlay.children.add(_img);

    _overlay.onClick.listen((html.MouseEvent mouseEvent) {
      detach();
    });
  }

  void attach() {
    html.querySelector('body').children.add(_overlay);
    _overlay
        .animate([
          {"opacity": 0},
          {"opacity": 100}
        ], 200)
        .onFinish
        .listen(
          (_) {
            print('finished animating overlay!');
            _overlay.style.opacity = '1.0';
          },
        );

    _img
        .animate(
          [
            {"opacity": 0},
            {"opacity": 100}
          ],
          200,
        )
        .onFinish
        .listen(
          (_) {
            _img.style.opacity = '1.0';
          },
        );
  }

  void detach() {
    _img.animate([
      {"opacity": 100},
      {"opacity": 0}
    ], 200);
    _overlay
        .animate([
          {"opacity": 100},
          {"opacity": 0}
        ], 200)
        .onFinish
        .listen((_) {
          html.querySelector('body').children.remove(_overlay);
        });
  }
}
