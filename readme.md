BP-CHIPCON
=

Réalisation d'une console CHIPCON sur une carte blue pill.

* sortie vidéo NTSC
* résolution: 180x112 pixels
* 16 couleurs ou ton de gris.
* 4 palettes de couleurs (incluant les tons de gris).
* version personnelle de CHIPCON
* La machine virtuelle va surporté les modes suivants:
  * CHIP8 64x32 monochrome
  * SCHIP 128x64 monochrome
  * XO-CHIP 128x64  4 couleurs
  * BP-CHIP (version personnelle) 180x112 16 couleurs

NOTES
-

1. Le cristal sur la carte blue pill doit-être remplacé par un cristal 14.318Mhz.
2. XO-CHIP est la machine virtuelle utilisé par [OCTO](https://github.com/JohnEarnest/Octo) de John Earnest.

Schématique
-
Ceci est sujet à changement:

![schématique](bp-chipcon-schematic.png)

carte de montage temporaire:

![prototype](prototyping-board.jpg)

Photos des différents modes vidéo
-
Mode vidéo CHIP8 original utilisé sur le COSMAC VIP en 1976.
64x32 pixels monochrome.

![mode vidéo CHIP8](vmode-chip8.jpg)

Mode SUPER CHIP utilisé sur les calculatrices HP-48
128x64 pixels monochrome.

![mode vidéo SCHIP](vmode-schip.jpg)

Mode XO-CHIP utilisé dans le projet OCTO de John Earnest
128x64 pixels 4 couleurs.

![mode vidéo XO-CHIP](vmode-xo-chip.jpg)

Mode BP-CHIP  développer pour ce projet.
180x112 pixels 16 couleurs.

![mode vidéo BP-CHIP](vmode-bp-chip.jpg)

Les traînées sur les photos sont le résultat d'une animation, 2 balles qui rebondissent sur les rebords de l'écran. Le floue des caractères est du à la webcam que je n'arrive pas à focusser correctement.

