BP-CHIPCON
=

Réalisation d'une console CHIPCON sur une carte blue pill.

* sortie vidéo NTSC
* résolution: 180x112 pixels
* 16 couleurs.
* version personnelle de CHIPCON appellée BPCHIP
* La machine virtuelle surporte les modes suivants:
  * SCHIP 128x64 monochrome.
  * BPCHIP (version personnelle) 180x112 16 couleurs

NOTES
-

1. Le cristal de **8 Mhz** sur la carte blue pill doit-être remplacé par un cristal **14.318 Mhz**. Cette fréquence correspond à 4 fois la fréquence du signal chroma NTSC (3.579545Mhz).
1. La résolution de 180x112 est un compromis. Le µC **stm32f103c8** ne possède que 20480 octets de RAM. Il faut en conserver une partie pour les variables,
le pile et l'espace pour les jeux. avec cette résolution le tampon vidéo accapare 180*112/2=10080 octets. Le tampon vidéo est alloué de manière statique donc on ne sauve pas d'espace RAM en passant au mode **SCHIP** à plus faible résolution. Ce mode d'ailleurs limite l'espace jeux à 4Ko. 
1. 2019-06-12  J'ai abandonné les modes CHIP8 et XO-CHIP. Ne reste que les modes XCHIP et BPCHIP.

Schématique
-
Ceci est sujet à changement:

![schématique](bp-chipcon-schematic.png)

J'ai fabriqué un *gamepad* avec 8 boutons. Il utilise un registre à décalage 74HC164 pour lire les boutons un peu à la manière des *gamepads* NES et SNES. Et ça fonctionne très bien.

![keypad](keypad-schematic.png)

Voici le prototype du gamepad. L'interface matériel comprends 5 fils.

![gamepad](gamepad.jpg)

carte de montage temporaire:

![prototype](prototyping-board.jpg)

![prototype sur carte pastilles](prototype-sur-carte-pastille.png) Le montage est fait sur une carte DFrobot. Les pastilles sont sur les 2 faces et sont en forme de croix. De plus il y a 2 rails d'alimentations
sur les bords indentifiés **+** et **-**. C'est une bonne qualité de carte.

Photos des différents modes vidéo
-
Mode SUPER CHIP utilisé sur les calculatrices HP-48
128x64 pixels monochrome. Ici ce n'est pas monochrome car il y a possibilité d'affecter une couleur aux différent sprites avec les nouvelles fonctions de la machine virtuelle **BPCHIP**. Mais les binaires originaux SCHIP apparaissent blanc sur fond vert sombre.

![mode vidéo SCHIP](vmode-schip.jpg)

Mode BPCHIP  développé pour ce projet.
180x112 pixels 16 couleurs.

![mode vidéo BP-CHIP](bpchip_mode.png)

notes:
-

1. Le floue des caractères est du à la webcam que je n'arrive pas à focusser correctement.
1. Je n'arrive pas non plus à capturer le test barre des couleurs car la webcam sature au blanc, l'ouverture n'étant pas réglable.


Outils de développement
-

J'ai créé les logiciels suivant pour le développement des jeux. Ces fichiers sont dans le dossier **outils**

1.  **bpcasm**  est l'assembleur de la console **BPChipcon**. Il génère un fichier binaire qui doit-être chargé en mémoire RAM du blue pill pour exécution. L'espace maximal pour les jeux **BPCHIP** est de 8Ko mais il est possible d'utiliser les 64Ko de mémoire flash supérieur du stm32f103c8 à l'adresse 0x10000.

1. **bpcdasm** permet de désassembler les fichiers binaire **SCHIP** pour modification et réassemblage avec **bpcasm**.

1. **cvt-chip** cette outil convertie les fichiers binaires **SCHIP** ou **BPCHIP** en fichiers **C** pour compilation avec le firmware de la console de jeux. Les fichiers générés par cet utilitaire doivent-être dans le dossier **games**. De plus le fichier **games.c** doit-être modifié pour inclure tout nouveau jeu inclus dans **games**. Ils sont compilés à la suite du firmware dans la mémoire flash dans la section **.user_data** et apparaissent dans le menu **Games list**.

![menu des jeux](games_menu.png)

Compiliation
-

Le fichier **makefile**  contient les différentes cibles pour la compilation. il suffit sur la ligne de commande de faire la commande **make nom_cible** pour compiler le projet
les cibles sont les suivantes:

1.  **build_debug**  pour compiler le projet avec le support pour le débogage avec **gdb**.
1. **build**  c'est la cible par défaut permet de compiler sans ooptimiation i.e. **-O0**. 
1. **build_O1** compile avec l'optimisation **-O1**.
1. **flash**  permet de flasher le microcontroleur sur le blue-pill avec le dernier binaire généré. Les fichiers résultant de la compilation sont dans le dossier **build**.
1. **debug** démarrre le débogueur.

Voici comment je compile et flash le firware à partir de la ligne de commande.

&gt; **make build_O1 && make flash**

s'il n'y a pas d'erreur le binaire se retrouve dans le dossier **build** et la deuxième phase **make flash** prend se binaire et utilise programmeur **ST-LINK V2** pour programmer le **stm32f103c8t6** qui est sur la carte **blue pill**.

Débogage avec gdb
-
Pour déboger le firware avec **gdb** utilisez les commandes suivantes:

&gt; **make build_debug && make flash**

&gt; **st-util**

dans une autre fenêtre console:

&gt; **make debug**

![session débogage](debug_session.png)


Débogage avec la console sérielle.
-
Ce mode de débogage est utilisé pour déboger les jeux. Il permet d'imprimer des information sur le terminal vt100 qui tourne sur le PC. 


Utilisation de la console
-

Lorsque la console démarre le menu principal suivant apparaît à l'écran.

![menu principal](main_menu.png)

1. **Games list** affiche et permet de sélectionner un jeu qui a été compilé avec le **firmwware**.

    ![games list](games_menu.png)

2. **Debug support** permet de choisir une des options de débogage de jeu par utilisation du port sériel.

    ![menu débogage](debug_menu.png)

    1. **No debug support** pas de support de débogage,pour l'utilisation normale de la console.
    1. **Print PC and OPCODE** imprime sur la console VT100 la valeur du compteur ordinal et le code machine à cette position pour chaque étape d'exécution du programme.
    1. **Print all VM states.** Imprime tous les états de la machine virtuelle à chaque étape d'exécution.
    1. **Single step** imprime tous les états de la machine virtuelle et suspend l'exécution à chaque étape. Il faut enfoncer une touche au clavier de la console VT100 pour avancer pas à pas dans l'exécution du jeu.

1. **Video test**  est utilisé seulement lors du développement de la console pour vérifier le fonctionnement des différents modes vidéo. Cette option peut-être retirée dans la vesion finale.
1. **Sound test**  est utilisé seulement lors du développement de la console pour vérifier le fonctionnement du module sons. Cette option peut-être retirée dans la vesion finale.

NOTES
-

1. **2019-06-13** À ce moment çi j'ai complété le montage d'un prototype de la console et j'ai inclus 13 jeux SCHIP dans le menu jeux. Le premier item **test** n'est qu'un test pour vérifier le bon fonctionnement des fonctions du mode **BPCHIP**. **lem** est un jeu que j'ai importé de mon projet [chipcon v2](https://github.com/picatout/chipcon_v2) mais qui doit-être modifié pour fonctionner correctement dans le monde **BPCHIP**. 



