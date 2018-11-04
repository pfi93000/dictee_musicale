#
# Dictée de rythmes
# Créé par Paul FIEVET le 8 mai 2018
#

sequence = 28            # numéro à changer pour avoir une autre dictée

binaire_ternaire = 1     # 1:binaire; 2:ternaire; rrand_i(1,2):choix au hazard

binaire_min = 1          # entre 1 et 16
binaire_max = 2          # entre binaire_mix et 16

ternaire_min = 2         # entre 1 et 10
ternaire_max = 2         # entre ternaire_min et 10


use_random_seed sequence

use_synth :piano
notes = [:C3, :D3, :E3, :F3, :G3, :A3, :B3, :C4, :B3, :A3, :G3, :F3, :E3, :D3, :C3, :D3, :E3, :F3, :G3, :A3, :B3, :C4, :B3, :A3, :G3, :F3, :E3, :D3, :C3, :D3, :E3, :F3, :G3, :A3, :B3, :C4, :B3, :A3, :G3, :F3, :E3, :D3, :C3, :D3, :E3, :F3, :G3, :A3, :B3, :C4, :B3, :A3, :G3, :F3, :E3, :D3, :C3, :D3, :E3, :F3, :G3, :A3, :B3, :C4, :B3, :A3, :G3, :F3, :E3, :D3, :C3]
index = 0


if binaire_ternaire == 1
  use_bpm 480          # vitesse de la dictée en binaire ; doit être un multiple de 12
  define :noire_pointee_debut do
    play notes[index], attack: 1, sustain: 16, release: 1, amp: 4  ## noire pointee
    index = index + 1                                              ## note suivante
    sleep 18                                                       ## temps de pause d'une noire pointee
  end
  define :noire_pointee do
    play notes[index], attack: 1, sustain: 16, release: 1, amp: 1  ## noire pointee
    index = index + 1                                              ## note suivante
    sleep 18                                                       ## temps de pause d'une noire pointee
  end
  define :soupir do
    index = index + 1                                              ## note suivante
    sleep 12                                                       ## temps de pause d'un soupir
  end
  define :noire_debut do
    play notes[index], attack: 1, sustain: 10, release: 1, amp: 4  ## noire
    index = index + 1                                              ## note suivante
    sleep 12                                                       ## temps de pause d'une noire
  end
  define :noire do
    play notes[index], attack: 1, sustain: 10, release: 1, amp: 1  ## noire
    index = index + 1                                              ## note suivante
    sleep 12                                                       ## temps de pause d'une noire
  end
  define :croche_pointee_debut do
    play notes[index], attack: 1, sustain: 7, release: 1, amp: 4   ## croche pointée
    index = index + 1                                              ## note suivante
    sleep 9                                                        ## temps de pause d'une croche
  end
  define :croche_pointee do
    play notes[index], attack: 1, sustain: 7, release: 1, amp: 1   ## croche pointée
    index = index + 1                                              ## note suivante
    sleep 9                                                        ## temps de pause d'une croche
  end
  define :demi_soupir do
    index = index + 1                                              ## note suivante
    sleep 6                                                        ## temps de pause d'un demi-soupir
  end
  define :croche_debut do
    play notes[index], attack: 1, sustain: 4, release: 1, amp: 4   ## croche
    index = index + 1                                              ## note suivante
    sleep 6                                                        ## temps de pause d'une croche
  end
  define :croche do
    play notes[index], attack: 1, sustain: 4, release: 1, amp: 1   ## croche
    index = index + 1                                              ## note suivante
    sleep 6                                                        ## temps de pause d'une croche
  end
  define :triolet_debut do
    play notes[index], attack: 1, sustain: 2, release: 1, amp: 4   ## triolet
    index = index + 1                                              ## note suivante
    sleep 4                                                        ## temps de pause de la note
  end
  define :triolet do
    play notes[index], attack: 1, sustain: 2, release: 1, amp: 1   ## triolet
    index = index + 1                                              ## note suivante
    sleep 4                                                        ## temps de pause de la note
  end
  define :double_croche_debut do
    play notes[index], attack: 1, sustain: 1, release: 1, amp: 4   ## double croche
    index = index + 1                                              ## note suivante
    sleep 3                                                        ## temps de pause d'une double croche
  end
  define :double_croche do
    play notes[index], attack: 1, sustain: 1, release: 1, amp: 1   ## double croche
    index = index + 1                                              ## note suivante
    sleep 3                                                        ## temps de pause d'une double croche
  end
else
  use_bpm 480          # vitesse de la dictée en ternaire ; doit être un multiple de 12
  define :noire_pointee_debut do
    play notes[index], attack: 1, sustain: 10, release: 1, amp: 4  ## noire pointée
    index = index + 1                                              ## note suivante
    sleep 12                                                       ## temps de pause d'une noire pointée
  end
  define :noire_debut do
    play notes[index], attack: 1, sustain: 6, release: 1, amp: 4   ## noire
    index = index + 1                                              ## note suivante
    sleep 8                                                        ## temps de pause d'une noire
  end
  define :noire do
    play notes[index], attack: 1, sustain: 6, release: 1, amp: 1   ## noire
    index = index + 1                                              ## note suivante
    sleep 8                                                        ## temps de pause d'une noire
  end
  define :croche_ointee_debut do
    play notes[index], attack: 1, sustain: 4, release: 1, amp: 4   ## croche pointée
    index = index + 1                                              ## note suivante
    sleep 6                                                        ## temps de pause d'une croche pointée
  end
  define :demi_soupir do
    index = index + 1                                              ## note suivante
    sleep 4                                                        ## temps de pause d'une croche
  end
  define :croche_debut do
    play notes[index], attack: 1, sustain: 2, release: 1, amp: 4   ## croche
    index = index + 1                                              ## note suivante
    sleep 4                                                        ## temps de pause d'une croche
  end
  define :croche do
    play notes[index], attack: 1, sustain: 2, release: 1, amp: 1   ## croche
    index = index + 1                                              ## note suivante
    sleep 4                                                        ## temps de pause d'une croche
  end
  define :double_croche do
    play notes[index], attack: 1, release: 1, amp: 1               ## double croche
    index = index + 1                                              ## note suivante
    sleep 2                                                        ## temps de pause d'une double croche
  end
  
end

4.times do                                     # 4 temps pour donner le rythme
  define :debut do
    play 60, attack: 1, sustain: 10, release: 1, amp: 4
    sleep 12 # 12 = 1 temps
  end
  debut
end



6.times do                                     # longueur de la dictée
  if  binaire_ternaire == 1
    # binaire
    choix = rrand_i(binaire_min,binaire_max)
    if choix == 1                                # 2 croches
      define :deux_croches do
        croche_debut
        croche
      end
      deux_croches
    end
    if choix == 2                                # noire
      define :noire_seule do
        noire_debut
      end
      noire_seule
    end
    if choix == 3                                # croche & 2 doubles
      define :croche_deux_doubles do
        croche_debut
        double_croche
        double_croche
      end
      croche_deux_doubles
    end
    if choix == 4                                # noire (encore, pour avoir plus souvent des noires)
      define :noire_seule do
        noire_debut
      end
      noire_seule
    end
    if choix == 5                                # triolet
      define :un_triolet do
        triolet_debut
        triolet
        triolet
      end
      un_triolet
    end
    if choix == 6                                # noire (encore, pour avoir plus souvent des noires)
      define :noire_seule do
        noire_debut
      end
      noire_seule
    end
    if choix == 7                                # 2 croches (encore)
      define :deux_croches do
        croche_debut
        croche
      end
      deux_croches
    end
    if choix == 8                                # croche pointée double
      define :croche_pointee_double do
        croche_pointee_debut
        double_croche
      end
      croche_pointee_double
    end
    if choix == 9                                # 4 doubles croches
      define :quatre_doubles do
        double_croche_debut
        double_croche
        double_croche
        double_croche
      end
      quatre_doubles
    end
    if choix == 10                               # soupir
      define :soupir_seul do
        soupir
      end
      soupir_seul
    end
    if choix == 11                               # 2 croches (encore)
      define :deux_croches do
        croche_debut
        croche
      end
      deux_croches
    end
    if choix == 12                               #  double & croche pointée
      define :double_croche_pointee do
        double_croche_debut
        croche_pointee
      end
      double_croche_pointee
    end
    if choix == 13                               # 2 doubles + croche
      define :deux_doubles_et_croche do
        double_croche_debut
        double_croche
        croche
      end
      deux_doubles_et_croche
    end
    if choix == 14                               # croche noire croche
      define :croche_noire_croche do
        croche_debut
        noire
        croche
      end
      croche_noire_croche
    end
    if choix == 15                               # demi soupir croche
      define :demi_soupir_croche do
        demi_soupir
        croche
      end
      demi_soupir_croche
    end
    if choix == 16                               # noire pointée croche
      define :noire_pointee_croche do
        noire_pointee_debut
        croche
      end
      noire_pointee_croche
    end
  else
    # ternaire
    choix = rrand_i(ternaire_min,ternaire_max)
    if choix == 1                                # noire croche
      define :noire_croche do
        noire_debut
        croche
      end
      noire_croche
    end
    if choix == 2                                # 3 croches
      define :trois_croches do
        croche_debut
        croche
        croche
      end
      trois_croches
    end
    if choix == 3                                # noire pointée
      define :noire_pointee do
        noire_pointee_debut
      end
      noire_pointee
    end
    if choix == 4                                # croche noire
      define :croche_noire do
        croche_debut
        noire
      end
      croche_noire
    end
    if choix == 5                                # croche pointée double croche croche
      define :croche_pointee_double_croche_et_croche do
        croche_pointee_debut
        double_croche
        croche
      end
      croche_pointee_double_croche_et_croche
    end
    if choix == 6                                # demi soupir noire
      define :demi_soupir_noire do
        demi_soupir
        noire
      end
      demi_soupir_noire
    end
    if choix == 7                                # noire demi-soupir
      define :noire_demi_soupir do
        noire_debut
        demi_soupir
      end
      noire_demi_soupir
    end
    if choix == 8                                # demi-soupir 2 croches
      define :demi_soupir_deux_croches do
        demi_soupir
        croche
        croche
      end
      demi_soupir_deux_croches
    end
    if choix == 9                                # croche demi-soupir croche
      define :croche_demi_soupir_croche do
        croche_debut
        demi_soupir
        croche
      end
      croche_demi_soupir_croche
    end
    if choix == 10                               # 2 croches demi-soupir
      define :deux_croches_demi_soupir do
        croche_debut
        croche
        demi_soupir
      end
      deux_croches_demi_soupir
    end
  end
end

2.times do                                     # 2 temps pour conclure la dictée
  define :fin do
    play 60, attack: 1, sustain: 10, release: 1, amp: 4
    sleep 12
  end
  fin
end
