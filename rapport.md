## Nom et Prénom ##
Kra Kouamé Gérard

## Adresse github ##
L'adresse de mon dépôt github est le suivant:

git@github.com:kk314352/Projet_Informatique_pour_Entreprise.git
# Les commande pour trouver les indices
Les commandes ci-dessous montrent la procédure que j'ai suivi pour retrouver les bons indices au fur et à mésure de ma *"chasse au tresore"* dans le terminal.
Mais avant cela, j'avais d'abord vérifiez que python3 est bien installé dans mon environnement de travail par la commande `python3 -V`.
Ensuite, j'avais installé quelques outils nécessaire pour récupérer et extraire l’archive par les commandes suivantes : 
```
sudo apt update
sudo apt install wget zip
```
En fin, j'ai exécuté le code ci-dessous pour télécharger les réssources néccessaires pour le projet:
```
sh <(wget -q https://upinfo.univ-cotedazur.fr/assets/im/tresor-shell/getprojet.sh -O -)
```

## 1. Pour trouver l'indice 2
Pour commencer, je devais exécuter la commande suivante `./generer_probleme.py 33690` pour générer le problème (car `33690` est mon numéro secret), mais pour une raison que j'ignore, cela ne marchait pas. Et donc, j'ai du remplacer `./generer_probleme.py 33690` par `python3 generer_probleme.py 33690`.\
Aussi, d'après les indications fournies dans l'indice 1 et vu que j'avais stocké les fihiers téléchargés ci-dessus dans mon repertoire `/home`, j'ouvre le terminal et je rentre directement dans le répertoire `/tresor_shell`. C'est le répertoire qui contient  le fichier `indices`(qui regroupes tous les indices). Ensuite, je suis la procédure indiqué dans l'indice 1 pour retrouver l'indice 2. C'est ce que les commandes ci-dessous traduisent.
```bash
kra231@DESKTOP-IPCC9HB:~$ cd ~/tresor_shell/
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 generer_probleme.py 33690
12345
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/12345
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/12345$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/12345$ cat indice
```
## 2. Pour trouver l'indice 3
En s'inspirant toujour de la description de la procédure pour trouver l'indice 3 (contenu dans le fichier indice 2), je sors complètement du fichier `/tresor_shell` et je rentre dans le répertoire `/usr` et à l'aide de la commande `ls | wc -l` je compte les sous répertoire et j'obtiens 12.\
Cela me permet ensuite de retrouver mon indice suivant (indice 3). Les commandes ci-dessous montrent le détail complet.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/12345$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd ../..
kra231@DESKTOP-IPCC9HB:/home$ cd ..
kra231@DESKTOP-IPCC9HB:/$ cd usr
kra231@DESKTOP-IPCC9HB:/usr$ ls | wc -l
12
kra231@DESKTOP-IPCC9HB:/usr$ cd ../..
kra231@DESKTOP-IPCC9HB:/$ cd ~/tresor_shell/
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 3 12
93323
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/93323
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/93323$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/93323$ cat indice
```

## 3. Pour trouver l'indice 4
Ici, vu que l'indication décrite dans le fichier précédent me disait que l'indication vers l'indice 4 est le nom de mon ordinateur, j'utilise donc la commande `hostname` pour trouver le nom *(je pouvais le faire sans commande, juste en regardant `kra231@DESKTOP-IPCC9HB`)*. Cela me permet de retrouver l'indice 4 en procédent de façon similaire que précédemment. C'est ce que décrit les commandes ci-dessous.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/93323$ cd ..
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices$ cd ..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ hostname
DESKTOP-IPCC9HB
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 4 DESKTOP-IPCC9HB
58792
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/58792
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/58792$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/58792$ cat indice
```

## 4. Pour trouver l'indice 5
Ici, j'exécute d'abord `man mv` pour voir le manuel de la comande `mv` et je remarque que c'est l'option `-n` qui  empêche l'écrasement.\
Ainsi donc, je suis la procédure indiquée dans le fichier précédent et j'obtient l'indice 5. Cela se vois de façon détaillée par les commandes ci-dessous.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/58792$ man mv
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/58792$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 5 -n
49137
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/49137
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/49137$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/49137$ cat indice
```
## 5. Pour trouver l'indice 6
D'après l'indication dans le fichier précédent, dans le répertoire `~/tresor_shell`, il y a une *"cachette"*, que je dois
explorer. En particulier, il me faut chercher un fichier `penguin`. Ainsi, je trouverai l'indication vers le prochain indice.
Donc, j'exécute la commande `ls -d .*` dans le répertoire `~/tresor_shell` ce qui me permet de retrouver le fichier *.cachette*.\
Ensuite, je rentre dans ledit fichier puis j'exécute à nouveau la commande `ls -d .*` . Ce qui me permet de retrouver le  fichier `penguin`. En fin, par le même principe de recherche, je retrouve l'indice 6.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/49137$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ ls -d .*
.  ..  .cachette  .images
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd .cachette
kra231@DESKTOP-IPCC9HB:~/tresor_shell/.cachette$ ls -d .*
.   .baobab    .koala    .octopus  .parrot   .snail   .tomcat    .wombat
..  .hedgehog  .machine  .panther  .penguin  .tomato  .universe
kra231@DESKTOP-IPCC9HB:~/tresor_shell/.cachette$ cat .penguin
375261
kra231@DESKTOP-IPCC9HB:~/tresor_shell/.cachette$ cd ..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 6 375261
80539
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/80539
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/80539$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/80539$ cat indice
```
## 6. Pour trouver l'indice 7
Selon l'indication dans le fichier pécédent, la variable `PATH` dit à l'ordinateur où sont les programmes. Chaque chemin qui
peut contenir un programme est placé entre deux points. L'indication vers le
prochain indice est le premier chemin listé dans votre `PATH`.\
Ainsi, je fais `echo $PATH` dans mon répertoire `/home`, ce qui me permet d'obtenir `/usr/local/sbin`. En appliquant donc la consigne comme décrite, je retrouve l'indice 7

```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/80539$ cd ..
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices$ cd ../..
kra231@DESKTOP-IPCC9HB:~$ echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/Program Files/WindowsApps/CanonicalGroupLimited.Ubuntu_2204.3.49.0_x64__79rhkp1fndgsc:/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH/:/mnt/c/Program Files/Docker/Docker/resources/bin:/mnt/c/Users/HP/AppData/Local/Programs/MiKTeX/miktex/bin/x64/:/mnt/c/Users/HP/AppData/Roaming/TinyTeX/bin/windows:/mnt/c/Users/HP/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/HP/AppData/Local/Programs/Microsoft VS Code/bin:/mnt/c/MinGW/bin:/snap/bin
kra231@DESKTOP-IPCC9HB:~$ cd ~/tresor_shell/
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 7 /usr/local/sbin
68416
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/68416
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/68416$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/68416$ cat indice
```
## 7. Pour trouver l'indice 8
De façon similaire, l'indication donnée dans le fichier précédent dit que le répertoire `images` contient des fichiers images en apparence tout à fait
normaux. Mais un message secret a été caché dans leur cinq dernières lignes.\
L'indication vers l'indice 8 est formé à partir du dernier mot de chacune de ces lignes pour le fichier `chat.jpg`.\
Ainsi donc, je me place dans le répertoire `/tresor_shell/images` et je fais `ls` ce qui me permet de voir le fichier `chat.jpg`. Je l'ouvre ensuite par lacommande `gedit chat.jpg`. Ensuite je récopie donc le dernier mot de chacune de ces cinq dernières lignes. J'obtiens donc, `surprisesattentivessilencenom` car le fichier ne contient rien *(espace vide)* sur la première des cinq dernières lignes, a **surprises** en fin de la seconde, a **attentives** en fin de la troisième, **silence** en fin de la quatrième et **nom** en fin de la cinquième.\
Par suite, je me place dans le répertoire `/tresor_shell` et j'exécute `python3 indice_suivant.py 8 surprisesattentivessilencenom` ce qui me permet de retrouver le numéro de l'indice 8.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/68416$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ ls
Dockerfile.txt                  fonctions            index.md                  indices                 secret.log
Dockerfile.txt:Zone.Identifier  generer_probleme.py  index.md:Zone.Identifier  indices_trouvés
commandes.log                   images               indice_suivant.py         pyarmor_runtime_000000
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd images
kra231@DESKTOP-IPCC9HB:~/tresor_shell/images$ ls
baleine.jpg  ecureuil.jpg  girafe.jpg    koala.jpg     pieuvre.jpg   wombat.jpg
chat.jpg     escargot.jpg  herisson.jpg  pangolin.jpg  pingouin.jpg
kra231@DESKTOP-IPCC9HB:~/tresor_shell/images$ gedit chat.jpg

** (gedit:11939): WARNING **: 12:44:55.914: Set document metadata failed: Setting attribute metadata::gedit-position not supported
kra231@DESKTOP-IPCC9HB:~/tresor_shell/images$ cd ..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 8 surprisesattentivessilencenom
74744
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/74744
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/74744$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/74744$ cat indice
```
## 8. Pour trouver l'indice 9
Ici, en suivant les indications du fichier précédent, je me place dans le réperoire `/tresor_shell` et je crée le fichier `toutpuissant.txt` qui contient le texte ci-dessous:
    ```
    Je veux utiliser sudo.
    MP
    ```
    De plus, je modifie **MP** par mes initiales **KKG** à l'aide de la commande `gedit toutpuissant.txt`. Esuite, je le déplace dans le répertoire `/usr/local` par la commande `sudo mv toutpuissant.txt /usr/local`. Après authentification, je vérifie si ma commande a marché. En fin, je me place dans le réperoire `/tresor_shell` puis j'exécute `python3 indice_suivant.py 9 KKG`, ce qui me permet de trouver le numéro de l'indice 9.
    
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/74744$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ ls
Dockerfile.txt                  fonctions            index.md                  indices                 secret.log
Dockerfile.txt:Zone.Identifier  generer_probleme.py  index.md:Zone.Identifier  indices_trouvés
commandes.log                   images               indice_suivant.py         pyarmor_runtime_000000
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ gedit toutpuissant.txt

** (gedit:13110): WARNING **: 12:49:49.689: Set document metadata failed: Setting attribute metadata::gedit-spell-language not supported

** (gedit:13110): WARNING **: 12:49:49.689: Set document metadata failed: Setting attribute metadata::gedit-encoding not supported

** (gedit:13110): WARNING **: 12:49:51.071: Set document metadata failed: Setting attribute metadata::gedit-position not supported
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ ls
Dockerfile.txt                  fonctions            index.md                  indices                 secret.log
Dockerfile.txt:Zone.Identifier  generer_probleme.py  index.md:Zone.Identifier  indices_trouvés         toutpuissant.txt
commandes.log                   images               indice_suivant.py         pyarmor_runtime_000000
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ sudo mv toutpuissant.txt /usr/local
[sudo] password for kra231:
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ ls
Dockerfile.txt                  fonctions            index.md                  indices                 secret.log
Dockerfile.txt:Zone.Identifier  generer_probleme.py  index.md:Zone.Identifier  indices_trouvés
commandes.log                   images               indice_suivant.py         pyarmor_runtime_000000
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 9 KKG
14971
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/14971
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/14971$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/14971$ cat indice
```

## 9. Pour trouver l'indice 10
Ici, je me place d'abord dans le répertoire `/usr/share/dict`. Ensuite, je vérifie le manuel de la commande `grep` par `man grep` puis je vérifie que le fichier `words` (c'est un fichier qui sert de dictionnaire pour la correction orthographique) est bien disponible et en fin, je compte le nombre de mots dans ce dictionnaire par la commande `wc words` . Je trouve donc, **10 104334** mots. De là, je me place dans le répertoire `/tresor_shell` et j'exécute `python3 indice_suivant.py 10 104334`, ce qui me donne le numéro de l'indice 10.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/14971$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd ../..
kra231@DESKTOP-IPCC9HB:/home$ cd ..
kra231@DESKTOP-IPCC9HB:/$ cd /usr/share/dict
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ man grep
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ ls
README.select-wordlist  american-english  words  words.pre-dictionaries-common
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ wc words
104334 104334 985084 words
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ cd ~/tresor_shell/
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 10 104334
13801
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/13801
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/13801$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/13801$ cat indice
```
## 10. Pour trouver l'indice 11
Pour trouver l'indice 11, la consigne dit que l'indication suivante est le mot qui apparaît avant *"baobab"* dans `/usr/share/dict/words`.\ 
Je me place donc dans le répertoire `/usr/share/dict`. De là, à l'aide de l'option `-B` de la commande `grep`, j'exécute `grep -B 1 "baobab" words`. Cela me permet d'identifier *"banyans"*. C'est le mot qui apparaît avant *"baobab"* dans `/usr/share/dict/words`.\
En fin, Je me place donc dans le répertoire `/tresor_shell` et j'exécute la commande `python3 indice_suivant.py 11 banyans`. Ce qui me permet d'obtenir l'indice 11.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/13801$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd ../..
kra231@DESKTOP-IPCC9HB:/home$ cd ..
kra231@DESKTOP-IPCC9HB:/$ cd /usr/share/dict
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ ls
README.select-wordlist  american-english  words  words.pre-dictionaries-common
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ man grep
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ grep -B 1 "baobab" words
banyans
baobab
baobab's
baobabs
kra231@DESKTOP-IPCC9HB:/usr/share/dict$ cd ~/tresor_shell/
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 11 banyans
08538
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/08538
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/08538$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/08538$ cat indice
```
## 11. Pour trouver l'indice 12
Sélon la consigne indiquée dans le fichier précédent, je dois utiliser la commande `ls -la /bin/` pour obtenir une grande liste de fichiers.\ 
La 5ème colonne dans cette liste est la taille des fichiers en octets.\
Après avoir exécuté la commande `ls -la /bin/` depuis le répertoire `/tresor_shell/indices`, je fais `man sort` pour voir les options permettant de trier la 5ème colonne par ordre décroissant d'un tel fihier: je trouve l'option `-nr -k 5`.\
Ensuite, je me met donc dans le répertoire `/bin` et j'exécute la commande qui suit `ls -l | sort -nr -k 5`. Ce qui me permet d'afficher la liste de ces fichiers triés du plus grand au plus petit *(par ordre décroissant)*.\
En appliquant l'indication, je me met dans le répertoire `/tresor_shell/` puis j'exécute `python3 indice_suivant.py 12 -nr -k 5`. Cela me fournit le numéro de l'indice 12.
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/08538$ cd ..
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices$ ls -la /bin/
total 374172
drwxr-xr-x  2 root root        36864 Mar 24 19:10  .
drwxr-xr-x 14 root root         4096 Nov 22 22:36  ..
lrwxrwxrwx  1 root root            4 Feb 17  2020  NF -> col1
lrwxrwxrwx  1 root root            1 Mar 25  2022  X11 -> .
-rwxr-xr-x  1 root root        51648 Jan  8 15:56 '['
-rwxr-xr-x  1 root root        35344 Jun  5  2023  aa-enabled
-rwxr-xr-x  1 root root        35344 Jun  5  2023  aa-exec
-rwxr-xr-x  1 root root        31248 Jun  5  2023  aa-features-abi
-rwxr-xr-x  1 root root        14478 Oct 24 15:07  add-apt-repository
-rwxr-xr-x  1 root root        14712 Feb 21  2022  addpart
lrwxrwxrwx  1 root root           26 Jan 23 16:08  addr2line -> x86_64-linux-gnu-addr2line
-rwxr-xr-x  1 root root         2568 Apr 14  2023  apport-bug
-rwxr-xr-x  1 root root        13360 Apr 14  2023  apport-cli
lrwxrwxrwx  1 root root           10 Apr 14  2023  apport-collect -> apport-bug
-rwxr-xr-x  1 root root         2070 Apr 14  2023  apport-unpack
lrwxrwxrwx  1 root root            6 Mar 17  2022  apropos -> whatis
-rwxr-xr-x  1 root root        18824 Oct  6 10:53  apt
lrwxrwxrwx  1 root root           18 Oct 24 15:07  apt-add-repository -> add-apt-repository
-rwxr-xr-x  1 root root        84448 Oct  6 10:53  apt-cache
-rwxr-xr-x  1 root root        27104 Oct  6 10:53  apt-cdrom
-rwxr-xr-x  1 root root        27024 Oct  6 10:53  apt-config
-rwxr-xr-x  1 root root        23008 Oct  6 10:53  apt-extracttemplates
-rwxr-xr-x  1 root root       236008 Oct  6 10:53  apt-ftparchive
-rwxr-xr-x  1 root root        51680 Oct  6 10:53  apt-get
-rwxr-xr-x  1 root root        28173 Oct  6 10:53  apt-key
-rwxr-xr-x  1 root root        51680 Oct  6 10:53  apt-mark
-rwxr-xr-x  1 root root        39320 Oct  6 10:53  apt-sortpkgs
lrwxrwxrwx  1 root root           19 Jan 23 16:08  ar -> x86_64-linux-gnu-ar
-rwxr-xr-x  1 root root        31240 Jan  8 15:56  arch
lrwxrwxrwx  1 root root           19 Jan 23 16:08  as -> x86_64-linux-gnu-as
-rwxr-xr-x  1 root root       145904 Mar 23  2022  aspell
-rwxr-xr-x  1 root root         2044 Mar 23  2022  aspell-import
lrwxrwxrwx  1 root root           21 Nov 22 22:36  awk -> /etc/alternatives/awk
-rwxr-xr-x  1 root root        51728 Jan  8 15:56  b2sum
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  base32
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  base64
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  basename
-rwxr-xr-x  1 root root        47624 Jan  8 15:56  basenc
-rwxr-xr-x  1 root root      1396520 Mar 14 12:31  bash
-rwxr-xr-x  1 root root         6818 Mar 14 12:31  bashbug
-rwxr-xr-x  1 root root        72184 Nov 21 21:57  bootctl
-rwxr-xr-x  1 root root       121144 May  9  2022  broadwayd
-rwxr-xr-x  1 root root        47816 Jan 16  2021  buildhash
-rwxr-xr-x  1 root root        92664 Nov 21 21:57  busctl
-rwxr-xr-x  1 root root      2193264 Feb  4  2022  busybox
-rwxr-xr-x  1 root root        72160 Feb 25  2022  bwrap
-rwxr-xr-x  1 root root         8363 Feb 17  2020  byobu
-rwxr-xr-x  1 root root          996 Feb 17  2020  byobu-config
-rwxr-xr-x  1 root root         4774 Feb 17  2020  byobu-ctrl-a
-rwxr-xr-x  1 root root         1295 Feb 17  2020  byobu-disable
-rwxr-xr-x  1 root root         1341 Feb 17  2020  byobu-disable-prompt
-rwxr-xr-x  1 root root         1182 Feb 17  2020  byobu-enable
-rwxr-xr-x  1 root root         1453 Feb 17  2020  byobu-enable-prompt
-rwxr-xr-x  1 root root         1351 Feb 17  2020  byobu-export
-rwxr-xr-x  1 root root         6440 Feb 17  2020  byobu-janitor
-rwxr-xr-x  1 root root         1506 Feb 17  2020  byobu-keybindings
-rwxr-xr-x  1 root root         3329 Feb 17  2020  byobu-launch
-rwxr-xr-x  1 root root         1910 Feb 17  2020  byobu-launcher
-rwxr-xr-x  1 root root         2459 Feb 17  2020  byobu-launcher-install
-rwxr-xr-x  1 root root         1561 Feb 17  2020  byobu-launcher-uninstall
-rwxr-xr-x  1 root root         3348 Feb 17  2020  byobu-layout
-rwxr-xr-x  1 root root         1156 Feb 17  2020  byobu-prompt
-rwxr-xr-x  1 root root         1410 Feb 17  2020  byobu-quiet
-rwxr-xr-x  1 root root         3298 Feb 17  2020  byobu-reconnect-sockets
lrwxrwxrwx  1 root root            5 Feb 17  2020  byobu-screen -> byobu
-rwxr-xr-x  1 root root         1452 Feb 17  2020  byobu-select-backend
-rwxr-xr-x  1 root root         5123 Feb 17  2020  byobu-select-profile
-rwxr-xr-x  1 root root         1012 Feb 17  2020  byobu-select-session
-rwxr-xr-x  1 root root         1600 Feb 17  2020  byobu-shell
-rwxr-xr-x  1 root root         1306 Feb 17  2020  byobu-silent
-rwxr-xr-x  1 root root         6015 Feb 17  2020  byobu-status
-rwxr-xr-x  1 root root         1207 Feb 17  2020  byobu-status-detail
lrwxrwxrwx  1 root root            5 Feb 17  2020  byobu-tmux -> byobu
-rwxr-xr-x  1 root root         4667 Feb 17  2020  byobu-ugraph
-rwxr-xr-x  1 root root        11996 Feb 17  2020  byobu-ulevel
lrwxrwxrwx  1 root root           24 Jan 23 16:08  c++filt -> x86_64-linux-gnu-c++filt
-rwxr-xr-x  1 root root         6963 Feb 16 09:51  c_rehash
lrwxrwxrwx  1 root root            3 May 16  2023  captoinfo -> tic
-rwxr-xr-x  1 root root        35288 Jan  8 15:56  cat
-rwxr-xr-x  1 root root        35592 Mar 17  2022  catman
-rwxr-sr-x  1 root shadow      72184 Feb  6 13:54  chage
-rwxr-xr-x  1 root root        14656 Jun  2  2022  chattr
-rwxr-xr-x  1 root root        59912 Jan  8 15:56  chcon
-rwsr-xr-x  1 root root        72712 Feb  6 13:54  chfn
-rwxr-xr-x  1 root root        55816 Jan  8 15:56  chgrp
-rwxr-xr-x  1 root root        55816 Jan  8 15:56  chmod
-rwxr-xr-x  1 root root        22904 Feb 21  2022  choom
-rwxr-xr-x  1 root root        59912 Jan  8 15:56  chown
-rwxr-xr-x  1 root root        27000 Feb 21  2022  chrt
-rwsr-xr-x  1 root root        44808 Feb  6 13:54  chsh
-rwxr-xr-x  1 root root        14568 Dec 16  2022  chvt
-rwxr-xr-x  1 root root       149817 Nov 22  2021  ckbcomp
-rwxr-xr-x  1 root root        35240 Jan  8 15:56  cksum
-rwxr-xr-x  1 root root        14656 May 16  2023  clear
-rwxr-xr-x  1 root root        14568 Mar 14 12:31  clear_console
-rwxr-xr-x  1 root root        43408 Mar 23  2022  cmp
-rwxr-xr-x  1 root root        14488 Dec 16  2022  codepage
-rwxr-xr-x  1 root root        22912 Feb 21  2022  col
-rwxr-xr-x  1 root root          963 Feb 17  2020  col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col2 -> col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col3 -> col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col4 -> col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col5 -> col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col6 -> col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col7 -> col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col8 -> col1
lrwxrwxrwx  1 root root            4 Feb 17  2020  col9 -> col1
-rwxr-xr-x  1 root root        14720 Feb 21  2022  colcrt
-rwxr-xr-x  1 root root        14720 Feb 21  2022  colrm
-rwxr-xr-x  1 root root        35200 Feb 21  2022  column
lrwxrwxrwx  1 root root           56 Mar 15 11:53  com.docker.cli -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/com.docker.cli
-rwxr-xr-x  1 root root        35344 Jan  8 15:56  comm
-rwxr-xr-x  1 root root     53459832 Jan 31 12:02  containerd
-rwxr-xr-x  1 root root      7949176 Jan 31 12:02  containerd-shim
-rwxr-xr-x  1 root root     10061976 Jan 31 12:02  containerd-shim-runc-v1
-rwxr-xr-x  1 root root     10087000 Jan 31 12:02  containerd-shim-runc-v2
-rwxr-xr-x  1 root root        15375 Nov 23 15:56  corelist
-rwxr-xr-x  1 root root       141832 Jan  8 15:56  cp
-rwxr-xr-x  1 root root         8360 Nov 23 15:56  cpan
-rwxr-xr-x  1 root root         8381 Nov 23 15:56  cpan5.34-x86_64-linux-gnu
-rwxr-xr-x  1 root root       140928 Aug 22  2021  cpio
-rwxr-sr-x  1 root crontab     39568 Mar 23  2022  crontab
-rwxr-xr-x  1 root root       109064 Jan  8 15:56  csplit
-rwxr-xr-x  1 root root          960 Feb 17  2020  ctail
-rwxr-xr-x  1 root root     27596792 Jan 31 12:02  ctr
lrwxrwxrwx  1 root root            6 Mar 24  2022  ctstat -> lnstat
-rwxr-xr-x  1 root root       260328 Nov 29 20:23  curl
-rwxr-xr-x  1 root root        39432 Jan  8 15:56  cut
-rwxr-xr-x  1 root root       303512 Apr  3  2023  cvtsudoers
-rwxr-xr-x  1 root root       125688 Mar 23  2022  dash
-rwxr-xr-x  1 root root       104968 Jan  8 15:56  date
-rwxr-xr-x  1 root root        14632 Oct 25  2022  dbus-cleanup-sockets
-rwxr-xr-x  1 root root       232776 Oct 25  2022  dbus-daemon
-rwxr-xr-x  1 root root        30864 Oct 25  2022  dbus-launch
-rwxr-xr-x  1 root root        26920 Oct 25  2022  dbus-monitor
-rwxr-xr-x  1 root root        14632 Oct 25  2022  dbus-run-session
-rwxr-xr-x  1 root root        26920 Oct 25  2022  dbus-send
-rwxr-xr-x  1 root root        14632 Oct 25  2022  dbus-update-activation-environment
-rwxr-xr-x  1 root root        14632 Oct 25  2022  dbus-uuidgen
-rwxr-xr-x  1 root root        68120 Jan  8 15:56  dd
-rwxr-xr-x  1 root root        14568 Dec 16  2022  deallocvt
-rwxr-xr-x  1 root root        21394 Dec  7  2021  deb-systemd-helper
-rwxr-xr-x  1 root root         6156 Feb 15  2022  deb-systemd-invoke
-rwxr-xr-x  1 root root         2859 Feb 20  2022  debconf
-rwxr-xr-x  1 root root        11541 Feb 20  2022  debconf-apt-progress
-rwxr-xr-x  1 root root          608 Feb 20  2022  debconf-communicate
-rwxr-xr-x  1 root root         1719 Feb 20  2022  debconf-copydb
-rwxr-xr-x  1 root root          647 Feb 20  2022  debconf-escape
-rwxr-xr-x  1 root root         2995 Feb 20  2022  debconf-set-selections
-rwxr-xr-x  1 root root         1827 Feb 20  2022  debconf-show
-rwxr-xr-x  1 root root        23504 Nov 28 13:18  debian-distro-info
-rwxr-xr-x  1 root root        14640 Jan 16  2021  defmt-c
-rwxr-xr-x  1 root root        14640 Jan 16  2021  defmt-sh
-rwxr-xr-x  1 root root        14712 Feb 21  2022  delpart
-rwxr-xr-x  1 root root        45896 Feb 12 20:29  delv
-rwxr-xr-x  1 root root        85072 Jan  8 15:56  df
-rwxr-xr-x  1 root root         4414 Nov 11  2021  dh_bash-completion
-rwxr-xr-x  1 root root         9444 Feb 27  2019  dh_installxmlcatalogs
-rwxr-xr-x  1 root root       133680 Mar 23  2022  diff
-rwxr-xr-x  1 root root        55824 Mar 23  2022  diff3
-rwxr-xr-x  1 root root       150352 Feb 12 20:29  dig
-rwxr-xr-x  1 root root       138216 Jan  8 15:56  dir
-rwxr-xr-x  1 root root        39440 Jan  8 15:56  dircolors
-rwxr-xr-x  1 root root       443408 Jul  4  2022  dirmngr
-rwxr-xr-x  1 root root        56240 Jul  4  2022  dirmngr-client
-rwxr-xr-x  1 root root        31112 Jan  8 15:56  dirname
lrwxrwxrwx  1 root root           18 Nov 28 13:18  distro-info -> ubuntu-distro-info
-rwxr-xr-x  1 root root        72296 Feb 21  2022  dmesg
lrwxrwxrwx  1 root root            8 Mar 23  2022  dnsdomainname -> hostname
-rwxr-xr-x  1 root root        10675 Feb 13 14:47  do-release-upgrade
-rwxr-xr-x  1 root root     36784536 Mar  6 17:32  docker
lrwxrwxrwx  1 root root           56 Mar 15 11:53  docker-compose -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/docker-compose
lrwxrwxrwx  1 root root           46 Mar 15 11:53  docker-credential-desktop.exe -> /Docker/host/bin/docker-credential-desktop.exe
lrwxrwxrwx  1 root root           54 Mar 15 11:53  docker-index -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/docker-index
-rwxr-xr-x  1 root root      2193349 Mar  6 17:32  docker-proxy
-rwxr-xr-x  1 root root    101077008 Mar  6 17:32  dockerd
-rwxr-xr-x  1 root root        14836 Mar  6 17:32  dockerd-rootless-setuptool.sh
-rwxr-xr-x  1 root root         6870 Mar  6 17:32  dockerd-rootless.sh
lrwxrwxrwx  1 root root            8 Mar 23  2022  domainname -> hostname
-rwxr-xr-x  1 root root       318144 Feb 23 15:53  dpkg
-rwxr-xr-x  1 root root       137720 Feb 23 15:53  dpkg-deb
-rwxr-xr-x  1 root root       121336 Feb 23 15:53  dpkg-divert
-rwxr-xr-x  1 root root        21209 Feb 23 15:53  dpkg-maintscript-helper
-rwxr-xr-x  1 root root       141848 Feb 23 15:53  dpkg-query
-rwxr-xr-x  1 root root         4189 Feb 23 15:53  dpkg-realpath
-rwxr-xr-x  1 root root       100872 Feb 23 15:53  dpkg-split
-rwxr-xr-x  1 root root        47368 Feb 23 15:53  dpkg-statoverride
-rwxr-xr-x  1 root root        43424 Feb 23 15:53  dpkg-trigger
-rwxr-xr-x  1 root root       150024 Jan  8 15:56  du
-rwxr-xr-x  1 root root       162520 Dec 16  2022  dumpkeys
lrwxrwxrwx  1 root root           20 Jan 23 16:08  dwp -> x86_64-linux-gnu-dwp
-rwxr-xr-x  1 root root        35128 Jan  8 15:56  echo
-rwxr-xr-x  1 root root        55800 Feb 13  2022  ed
lrwxrwxrwx  1 root root           24 Nov 22 22:36  editor -> /etc/alternatives/editor
-rwxr-xr-x  1 root root           28 Mar 23  2022  egrep
-rwxr-xr-x  1 root root        43224 Feb 21  2022  eject
lrwxrwxrwx  1 root root           24 Jan 23 16:08  elfedit -> x86_64-linux-gnu-elfedit
-rwxr-xr-x  1 root root        41819 Nov 23 15:56  enc2xs
-rwxr-xr-x  1 root root         3078 Nov 23 15:56  encguess
-rwxr-xr-x  1 root root        26920 Feb  7  2022  enchant-2
-rwxr-xr-x  1 root root        18728 Feb  7  2022  enchant-lsmod-2
-rwxr-xr-x  1 root root        43976 Jan  8 15:56  env
-rwxr-xr-x  1 root root        35200 Mar 25  2022  envsubst
-rwxr-xr-x  1 root root       192968 Mar 23  2022  eqn
lrwxrwxrwx  1 root root           20 Nov 22 22:36  ex -> /etc/alternatives/ex
-rwxr-xr-x  1 root root        35360 Jan  8 15:56  expand
-rwxr-sr-x  1 root shadow      23136 Feb  6 13:54  expiry
-rwxr-xr-x  1 root root       104872 Jan  8 15:56  expr
-rwxr-xr-x  1 root root        72200 Jan  8 15:56  factor
-rwxr-xr-x  1 root root        23136 Feb  6 13:54  faillog
-rwxr-xr-x  1 root root        22904 Feb 21  2022  fallocate
-rwxr-xr-x  1 root root        26936 Jan  8 15:56  false
-rwxr-xr-x  1 root root        22760 Mar 23  2022  fc-cache
-rwxr-xr-x  1 root root        18664 Mar 23  2022  fc-cat
-rwxr-xr-x  1 root root        14568 Mar 23  2022  fc-conflist
-rwxr-xr-x  1 root root        14568 Mar 23  2022  fc-list
-rwxr-xr-x  1 root root        14568 Mar 23  2022  fc-match
-rwxr-xr-x  1 root root        14568 Mar 23  2022  fc-pattern
-rwxr-xr-x  1 root root        14568 Mar 23  2022  fc-query
-rwxr-xr-x  1 root root        14568 Mar 23  2022  fc-scan
-rwxr-xr-x  1 root root        14568 Mar 23  2022  fc-validate
-rwxr-xr-x  1 root root        14568 Dec 16  2022  fgconsole
-rwxr-xr-x  1 root root           28 Mar 23  2022  fgrep
-rwxr-xr-x  1 root root        27200 Sep 11  2023  file
-rwxr-xr-x  1 root root        22952 Feb 21  2022  fincore
-rwxr-xr-x  1 root root       282088 Mar 23  2022  find
-rwxr-xr-x  1 root root        12019 Jan 16  2021  findaffix
-rwxr-xr-x  1 root root        65128 Feb 21  2022  findmnt
-rwxr-xr-x  1 root root        23016 Feb 21  2022  flock
-rwxr-xr-x  1 root root        39432 Jan  8 15:56  fmt
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  fold
-rwxr-xr-x  1 root root        26864 Oct 31 12:36  free
lrwxrwxrwx  1 root root           21 Nov 22 22:37  ftp -> /etc/alternatives/ftp
-rwxr-xr-x  1 root root        22832 Feb  1 16:52  funzip
-rwxr-xr-x  1 root root        40256 Mar 24  2022  fuser
lrwxrwxrwx  1 root root           11 Mar 23  2022  fusermount -> fusermount3
-rwsr-xr-x  1 root root        35200 Mar 23  2022  fusermount3
-rwxr-xr-x  1 root root        22920 Jun  8  2023  gapplication
-rwxr-xr-x  1 root root       704984 Aug 17  2023  gawk
-rwxr-xr-x  1 root root        51592 Jun  8  2023  gdbus
-rwxr-xr-x  1 root root         9228 May  1  2022  gdialog
-rwxr-xr-x  1 root root        14672 Oct 21  2022  gdk-pixbuf-csource
-rwxr-xr-x  1 root root        14656 Oct 21  2022  gdk-pixbuf-pixdata
-rwxr-xr-x  1 root root        18832 Oct 21  2022  gdk-pixbuf-thumbnailer
-rwxr-xr-x  1 root root        14640 Mar  2  2022  gedit
lrwxrwxrwx  1 root root            3 Mar 23  2022  geqn -> eqn
-rwxr-xr-x  1 root root        35112 Jan  2 14:22  getconf
-rwxr-xr-x  1 root root        39576 Jan  2 14:22  getent
-rwxr-xr-x  1 root root        14568 Dec 16  2022  getkeycodes
-rwxr-xr-x  1 root root        22904 Feb 21  2022  getopt
-rwxr-xr-x  1 root root        35200 Mar 25  2022  gettext
-rwxr-xr-x  1 root root         5188 Mar 25  2022  gettext.sh
lrwxrwxrwx  1 root root           12 Feb  6  2022  ginstall-info -> install-info
-rwxr-xr-x  1 root root        92568 Jun  8  2023  gio
lrwxrwxrwx  1 root root           49 Jun  8  2023  gio-querymodules -> ../lib/x86_64-linux-gnu/glib-2.0/gio-querymodules
-rwxr-xr-x  1 root root      3702168 Jul  7  2023  git
lrwxrwxrwx  1 root root            3 Jul  7  2023  git-receive-pack -> git
-rwxr-xr-x  1 root root       565840 Jul  7  2023  git-shell
lrwxrwxrwx  1 root root            3 Jul  7  2023  git-upload-archive -> git
lrwxrwxrwx  1 root root            3 Jul  7  2023  git-upload-pack -> git
lrwxrwxrwx  1 root root           53 Jun  8  2023  glib-compile-schemas -> ../lib/x86_64-linux-gnu/glib-2.0/glib-compile-schemas
lrwxrwxrwx  1 root root            4 Mar 28  2022  gnome-help -> yelp
lrwxrwxrwx  1 root root           35 Mar 15 11:28  gnome-text-editor -> /etc/alternatives/gnome-text-editor
lrwxrwxrwx  1 root root           21 Jan 23 16:08  gold -> x86_64-linux-gnu-gold
-rwsr-xr-x  1 root root        72072 Feb  6 13:54  gpasswd
-rwxr-xr-x  1 root root      1050624 Jul  4  2022  gpg
-rwxr-xr-x  1 root root       320472 Jul  4  2022  gpg-agent
-rwxr-xr-x  1 root root        84984 Jul  4  2022  gpg-connect-agent
-rwxr-xr-x  1 root root       117816 Jul  4  2022  gpg-wks-server
-rwxr-xr-x  1 root root         3516 Jul  4  2022  gpg-zip
-rwxr-xr-x  1 root root       508400 Jul  4  2022  gpgcompose
-rwxr-xr-x  1 root root       129776 Jul  4  2022  gpgconf
-rwxr-xr-x  1 root root        35200 Jul  4  2022  gpgparsemail
-rwxr-xr-x  1 root root       428952 Jul  4  2022  gpgsm
-rwxr-xr-x  1 root root        27184 Jul  4  2022  gpgsplit
-rwxr-xr-x  1 root root        64912 Jul  4  2022  gpgtar
-rwxr-xr-x  1 root root       277544 Jul  4  2022  gpgv
lrwxrwxrwx  1 root root            3 Mar 23  2022  gpic -> pic
lrwxrwxrwx  1 root root           22 Jan 23 16:08  gprof -> x86_64-linux-gnu-gprof
-rwxr-xr-x  1 root root       182728 Mar 23  2022  grep
-rwxr-xr-x  1 root root        22840 Jun  8  2023  gresource
-rwxr-xr-x  1 root root        96768 Mar 23  2022  groff
-rwxr-xr-x  1 root root         2776 Mar 23  2022  grog
-rwxr-xr-x  1 root root       166456 Mar 23  2022  grops
-rwxr-xr-x  1 root root       121368 Mar 23  2022  grotty
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  groups
-rwxr-xr-x  1 root root        31032 Jun  8  2023  gsettings
lrwxrwxrwx  1 root root            3 Mar 23  2022  gtbl -> tbl
-rwxr-xr-x  1 root root        35568 May  9  2022  gtk-builder-tool
-rwxr-xr-x  1 root root        18856 May  9  2022  gtk-encode-symbolic-svg
-rwxr-xr-x  1 root root        18904 May  9  2022  gtk-launch
-rwxr-xr-x  1 root root        14648 May  9  2022  gtk-query-settings
-rwxr-xr-x  1 root root        39496 May  9  2022  gtk-update-icon-cache
-rwxr-xr-x  2 root root         2346 Sep  5  2022  gunzip
-rwxr-xr-x  1 root root         6447 Sep  5  2022  gzexe
-rwxr-xr-x  1 root root        93424 Sep  5  2022  gzip
-rwxr-xr-x  1 root root        29227 Nov 23 15:56  h2ph
-rwxr-xr-x  1 root root        60934 Nov 23 15:56  h2xs
-rwxr-xr-x  1 root root        35248 Feb 21  2022  hardlink
lrwxrwxrwx  1 root root            7 Feb 21  2022  hd -> hexdump
-rwxr-xr-x  1 root root        43528 Jan  8 15:56  head
-rwxr-xr-x  1 root root         2514 Jan  3  2022  helpztags
-rwxr-xr-x  1 root root        51592 Feb 21  2022  hexdump
-rwxr-xr-x  1 root root       121672 Feb 12 20:29  host
-rwxr-xr-x  1 root root        31240 Jan  8 15:56  hostid
-rwxr-xr-x  1 root root        22760 Mar 23  2022  hostname
-rwxr-xr-x  1 root root        31104 Nov 21 21:57  hostnamectl
-rwxr-xr-x  1 root root       283840 Mar 23  2022  htop
lrwxrwxrwx  1 root root           50 Mar 15 11:53  hub-tool -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/hub-tool
-rwxr-xr-x  1 root root        10830 Jan 26 15:10  hwe-support-status
lrwxrwxrwx  1 root root            7 Feb 21  2022  i386 -> setarch
-rwxr-xr-x  1 root root        39624 Jan 16  2021  icombine
-rwxr-xr-x  1 root root        68000 Jan  2 14:22  iconv
-rwxr-xr-x  1 root root        39432 Jan  8 15:56  id
-rwxr-xr-x  1 root root        18776 Jan 16  2021  ijoin
-rwxr-xr-x  1 root root       308984 Feb  6  2022  info
lrwxrwxrwx  1 root root           29 Nov 22 22:37  infobrowser -> /etc/alternatives/infobrowser
-rwxr-xr-x  1 root root        63872 May 16  2023  infocmp
lrwxrwxrwx  1 root root            3 May 16  2023  infotocap -> tic
-rwxr-xr-x  1 root root       145944 Jan  8 15:56  install
-rwxr-xr-x  1 root root       105704 Feb  6  2022  install-info
-rwxr-xr-x  1 root root         4373 Nov 23 15:56  instmodsh
-rwxr-xr-x  1 root root        18808 Feb 21  2022  ionice
-rwxr-xr-x  1 root root       718896 Mar 24  2022  ip
-rwxr-xr-x  1 root root        22976 Feb 21  2022  ipcmk
-rwxr-xr-x  1 root root        18808 Feb 21  2022  ipcrm
-rwxr-xr-x  1 root root        39288 Feb 21  2022  ipcs
lrwxrwxrwx  1 root root           28 Jan 16 22:14  iptables-xml -> ../sbin/xtables-legacy-multi
-rwxr-xr-x  1 root root        14536 Mar 23  2022  ischroot
-rwxr-xr-x  1 root root       105232 Jan 16  2021  ispell
-rwxr-xr-x  1 root root         7222 Dec  2  2021  ispell-wrapper
-rwxr-xr-x  1 root root        47664 Jan  8 15:56  join
-rwxr-xr-x  1 root root        80272 Nov 21 21:57  journalctl
-rwxr-xr-x  1 root root         4992 Nov 23 15:56  json_pp
-rwxr-xr-x  1 root root        14872 Dec 16  2022  kbd_mode
-rwxr-xr-x  1 root root        18664 Dec 16  2022  kbdinfo
-rwxr-xr-x  1 root root        64336 Jul  4  2022  kbxutil
lrwxrwxrwx  1 root root            7 Jan 15  2014  keep-one-running -> run-one
-rwxr-xr-x  1 root root         4902 Mar 11  2022  kernel-install
-rwxr-xr-x  1 root root          961 Jan  2  2022  keyring
-rwxr-xr-x  1 root root        30952 Oct 31 12:36  kill
-rwxr-xr-x  1 root root        32096 Mar 24  2022  killall
-rwxr-xr-x  1 root root       170352 Aug 17  2021  kmod
-rwxr-xr-x  1 root root        35192 Feb 21  2022  last
lrwxrwxrwx  1 root root            4 Feb 21  2022  lastb -> last
-rwxr-xr-x  1 root root        28288 Feb  6 13:54  lastlog
-rwxr-xr-x  1 root root         7784 Jun 16  2020  lcf
lrwxrwxrwx  1 root root           19 Jan 23 16:08  ld -> x86_64-linux-gnu-ld
lrwxrwxrwx  1 root root           23 Jan 23 16:08  ld.bfd -> x86_64-linux-gnu-ld.bfd
lrwxrwxrwx  1 root root           24 Jan 23 16:08  ld.gold -> x86_64-linux-gnu-ld.gold
-rwxr-xr-x  1 root root         5443 Jan  2 14:22  ldd
-rwxr-xr-x  1 root root       199048 Feb 20 14:07  less
-rwxr-xr-x  1 root root        14656 Feb 20 14:07  lessecho
lrwxrwxrwx  1 root root            8 Feb 20 14:07  lessfile -> lesspipe
-rwxr-xr-x  1 root root        24272 Feb 20 14:07  lesskey
-rwxr-xr-x  1 root root         9047 Dec 28  2021  lesspipe
-rwxr-xr-x  1 root root       102144 Mar 17  2022  lexgrog
-rwxr-xr-x  1 root root        15778 Nov 23 15:56  libnetcfg
-rwxr-xr-x  1 root root        31240 Jan  8 15:56  link
lrwxrwxrwx  1 root root            7 Feb 21  2022  linux32 -> setarch
lrwxrwxrwx  1 root root            7 Feb 21  2022  linux64 -> setarch
-rwxr-xr-x  1 root root        59912 Jan  8 15:56  ln
-rwxr-xr-x  1 root root        23200 Mar 24  2022  lnstat
-rwxr-xr-x  1 root root       203528 Dec 16  2022  loadkeys
-rwxr-xr-x  1 root root        31048 Dec 16  2022  loadunimap
-rwxr-xr-x  1 root root        58944 Jan  2 14:22  locale
-rwxr-xr-x  1 root root        14488 Feb 14 15:47  locale-check
-rwxr-xr-x  1 root root        27000 Nov 21 21:57  localectl
-rwxr-xr-x  1 root root       334808 Jan  2 14:22  localedef
-rwxr-xr-x  1 root root        35800 Feb 21  2022  logger
-rwxr-xr-x  1 root root        52976 Feb  6 13:54  login
-rwxr-xr-x  1 root root        59888 Nov 21 21:57  loginctl
-rwxr-xr-x  1 root root        31240 Jan  8 15:56  logname
-rwxr-xr-x  1 root root        14720 Feb 21  2022  look
-rwxr-xr-x  1 root root       117736 Nov  1  2022  lowntfs-3g
-rwxr-xr-x  1 root root       138216 Jan  8 15:56  ls
-rwxr-xr-x  1 root root        14656 Jun  2  2022  lsattr
-rwxr-xr-x  1 root root         3638 Aug 25  2019  lsb_release
-rwxr-xr-x  1 root root       125312 Feb 21  2022  lsblk
-rwxr-xr-x  1 root root       100728 Feb 21  2022  lscpu
-rwxr-xr-x  1 root root       922824 Mar 24  2022  lshw
-rwxr-xr-x  1 root root        51576 Feb 21  2022  lsipc
-rwxr-xr-x  1 root root        31432 Feb 21  2022  lslocks
-rwxr-xr-x  1 root root        51576 Feb 21  2022  lslogins
-rwxr-xr-x  1 root root        39288 Feb 21  2022  lsmem
lrwxrwxrwx  1 root root            4 Aug 17  2021  lsmod -> kmod
-rwxr-xr-x  1 root root        39296 Feb 21  2022  lsns
-rwxr-xr-x  1 root root       167544 Mar 24  2022  lsof
-rwxr-xr-x  1 root root        94288 Aug 30  2021  lspci
-rwxr-xr-x  1 root root         1081 Aug 28  2017  lspgpot
-rwxr-xr-x  1 root root       252432 Mar 25  2022  lsusb
lrwxrwxrwx  1 root root           23 Nov 22 22:37  lzcat -> /etc/alternatives/lzcat
lrwxrwxrwx  1 root root           23 Nov 22 22:37  lzcmp -> /etc/alternatives/lzcmp
lrwxrwxrwx  1 root root           24 Nov 22 22:37  lzdiff -> /etc/alternatives/lzdiff
lrwxrwxrwx  1 root root           25 Nov 22 22:37  lzegrep -> /etc/alternatives/lzegrep
lrwxrwxrwx  1 root root           25 Nov 22 22:37  lzfgrep -> /etc/alternatives/lzfgrep
lrwxrwxrwx  1 root root           24 Nov 22 22:37  lzgrep -> /etc/alternatives/lzgrep
lrwxrwxrwx  1 root root           24 Nov 22 22:37  lzless -> /etc/alternatives/lzless
lrwxrwxrwx  1 root root           22 Nov 22 22:37  lzma -> /etc/alternatives/lzma
-rwxr-xr-x  1 root root        14568 Apr  8  2022  lzmainfo
lrwxrwxrwx  1 root root           24 Nov 22 22:37  lzmore -> /etc/alternatives/lzmore
-rwxr-xr-x  1 root root       120504 Mar 17  2022  man
-rwxr-xr-x  1 root root        36536 Mar 17  2022  man-recode
-rwxr-xr-x  1 root root       143296 Mar 17  2022  mandb
-rwxr-xr-x  1 root root         1942 Feb 17  2020  manifest
-rwxr-xr-x  1 root root        31520 Mar 17  2022  manpath
-rwxr-xr-x  1 root root        31048 Dec 16  2022  mapscrn
-rwxr-xr-x  1 root root       158504 Jan 23  2022  mawk
-rwxr-xr-x  1 root root        27072 Feb 21  2022  mcookie
-rwxr-xr-x  1 root root        43432 Jan  8 15:56  md5sum
lrwxrwxrwx  1 root root            6 Jan  8 15:56  md5sum.textutils -> md5sum
-rwxr-xr-x  1 root root        51608 Feb 12 20:29  mdig
-rwxr-xr-x  1 root root        14712 Feb 21  2022  mesg
-rwxr-xr-x  1 root root         3060 Dec 18  2021  migrate-pubring-from-classic-gpg
-rwxr-xr-x  1 root root        16163 Dec 16  2022  mk_modmap
-rwxr-xr-x  1 root root        68104 Jan  8 15:56  mkdir
-rwxr-xr-x  1 root root        39432 Jan  8 15:56  mkfifo
-rwxr-xr-x  1 root root        43528 Jan  8 15:56  mknod
-rwxr-xr-x  1 root root       260792 Mar 25  2022  mksquashfs
-rwxr-xr-x  1 root root        39432 Jan  8 15:56  mktemp
-rwxr-xr-x  1 root root        43392 Feb 21  2022  more
-rwsr-xr-x  1 root root        47480 Feb 21  2022  mount
-rwxr-xr-x  1 root root        18808 Feb 21  2022  mountpoint
lrwxrwxrwx  1 root root           20 Nov 22 22:37  mt -> /etc/alternatives/mt
-rwxr-xr-x  1 root root        68336 Aug 22  2021  mt-gnu
-rwxr-xr-x  1 root root        73984 Jan 11  2022  mtr
-rwxr-xr-x  1 root root        39216 Jan 11  2022  mtr-packet
-rwxr-xr-x  1 root root        31982 Jan 16  2021  munchlist
-rwxr-xr-x  1 root root       137752 Jan  8 15:56  mv
-rwxr-xr-x  1 root root        22904 Feb 21  2022  namei
-rwxr-xr-x  1 root root       283144 Feb 19  2022  nano
lrwxrwxrwx  1 root root           22 Nov 22 22:36  nawk -> /etc/alternatives/nawk
lrwxrwxrwx  1 root root           20 Nov 22 22:36  nc -> /etc/alternatives/nc
-rwxr-xr-x  1 root root        39560 Feb 23  2022  nc.openbsd
-rwxr-xr-x  1 root root          913 Mar 23  2022  neqn
lrwxrwxrwx  1 root root           24 Nov 22 22:36  netcat -> /etc/alternatives/netcat
-rwxr-xr-x  1 root root       104832 Nov 21 21:57  networkctl
-rwxr-xr-x  1 root root        20185 May  4  2022  networkd-dispatcher
-rwsr-xr-x  1 root root        40496 Feb  6 13:54  newgrp
-rwxr-xr-x  1 root root        35200 Mar 25  2022  ngettext
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  nice
lrwxrwxrwx  1 root root            8 Mar 23  2022  nisdomainname -> hostname
-rwxr-xr-x  1 root root       100936 Jan  8 15:56  nl
lrwxrwxrwx  1 root root           19 Jan 23 16:08  nm -> x86_64-linux-gnu-nm
-rwxr-xr-x  1 root root        35240 Jan  8 15:56  nohup
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  nproc
-rwxr-xr-x  1 root root         3293 Mar 23  2022  nroff
-rwxr-xr-x  1 root root        27232 Feb 21  2022  nsenter
-rwxr-xr-x  1 root root       121672 Feb 12 20:29  nslookup
-rwxr-xr-x  1 root root        31104 Mar 24  2022  nstat
-rwxr-xr-x  1 root root        76344 Feb 12 20:29  nsupdate
-rwxr-xr-x  1 root root       162824 Nov  1  2022  ntfs-3g
-rwxr-xr-x  1 root root        14720 Nov  1  2022  ntfs-3g.probe
-rwxr-xr-x  1 root root        27008 Nov  1  2022  ntfscat
-rwxr-xr-x  1 root root        39304 Nov  1  2022  ntfscluster
-rwxr-xr-x  1 root root        31104 Nov  1  2022  ntfscmp
-rwxr-xr-x  1 root root        43400 Nov  1  2022  ntfsdecrypt
-rwxr-xr-x  1 root root        27016 Nov  1  2022  ntfsfallocate
-rwxr-xr-x  1 root root        35208 Nov  1  2022  ntfsfix
-rwxr-xr-x  1 root root        55688 Nov  1  2022  ntfsinfo
-rwxr-xr-x  1 root root        28112 Nov  1  2022  ntfsls
-rwxr-xr-x  1 root root        31112 Nov  1  2022  ntfsmove
-rwxr-xr-x  1 root root       108928 Nov  1  2022  ntfsrecover
-rwxr-xr-x  1 root root        80752 Nov  1  2022  ntfssecaudit
-rwxr-xr-x  1 root root        26936 Nov  1  2022  ntfstruncate
-rwxr-xr-x  1 root root        18736 Nov  1  2022  ntfsusermap
-rwxr-xr-x  1 root root        43936 Nov  1  2022  ntfswipe
-rwxr-xr-x  1 root root        55848 Jan  8 15:56  numfmt
lrwxrwxrwx  1 root root           24 Jan 23 16:08  objcopy -> x86_64-linux-gnu-objcopy
lrwxrwxrwx  1 root root           24 Jan 23 16:08  objdump -> x86_64-linux-gnu-objdump
-rwxr-xr-x  1 root root        68104 Jan  8 15:56  od
-rwxr-xr-x  1 root root         8792 Apr 14  2023  oem-getlogs
lrwxrwxrwx  1 root root           17 Jul 20  2019  on_ac_power -> /sbin/on_ac_power
-rwxr-xr-x  1 root root      1001272 Feb 16 09:51  openssl
-rwxr-xr-x  1 root root        23128 Dec 16  2022  openvt
lrwxrwxrwx  1 root root           23 Nov 22 22:36  pager -> /etc/alternatives/pager
-rwxr-xr-x  1 root root        59776 Feb 21  2022  partx
-rwsr-xr-x  1 root root        59976 Feb  6 13:54  passwd
-rwxr-xr-x  1 root root        35240 Jan  8 15:56  paste
-rwxr-xr-x  1 root root        16502 Nov 24  2021  pastebinit
-rwxr-xr-x  1 root root       190992 Mar 24  2022  patch
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  pathchk
lrwxrwxrwx  1 root root            5 Nov 24  2021  pbget -> pbput
-rwxr-xr-x  1 root root         2569 Aug  3  2019  pbput
lrwxrwxrwx  1 root root            5 Nov 24  2021  pbputs -> pbput
lrwxrwxrwx  1 root root            7 Aug 18  2022  pdb3 -> pdb3.10
lrwxrwxrwx  1 root root           24 Nov 20 16:14  pdb3.10 -> ../lib/python3.10/pdb.py
-rwxr-xr-x  1 root root        14640 Mar 24  2022  peekfd
-rwxr-xr-x  2 root root      3802104 Nov 23 15:56  perl
-rwxr-xr-x  1 root root        14648 Nov 23 15:56  perl5.34-x86_64-linux-gnu
-rwxr-xr-x  2 root root      3802104 Nov 23 15:56  perl5.34.0
-rwxr-xr-x  2 root root        45183 Nov 23 15:56  perlbug
-rwxr-xr-x  1 root root          125 Aug 25  2021  perldoc
-rwxr-xr-x  1 root root        10867 Nov 23 15:56  perlivp
-rwxr-xr-x  2 root root        45183 Nov 23 15:56  perlthanks
-rwxr-xr-x  1 root root        30968 Oct 31 12:36  pgrep
-rwxr-xr-x  1 root root       204840 Mar 23  2022  pic
lrwxrwxrwx  1 root root           22 Nov 22 22:37  pico -> /etc/alternatives/pico
-rwxr-xr-x  1 root root         8360 Nov 23 15:56  piconv
lrwxrwxrwx  1 root root           14 Dec 14  2021  pidof -> /sbin/killall5
-rwxr-xr-x  1 root root        30968 Oct 31 12:36  pidwait
-rwxr-xr-x  2 root root       137584 Feb  6  2021  pigz
lrwxrwxrwx  1 root root           26 Nov 22 22:37  pinentry -> /etc/alternatives/pinentry
-rwxr-xr-x  1 root root        60056 Mar 24  2022  pinentry-curses
-rwxr-xr-x  1 root root        76672 Feb  5  2022  ping
lrwxrwxrwx  1 root root            4 Feb  5  2022  ping4 -> ping
lrwxrwxrwx  1 root root            4 Feb  5  2022  ping6 -> ping
-rwxr-xr-x  1 root root        35240 Jan  8 15:56  pinky
-rwxr-xr-x  1 root root        14720 Nov  9  2022  pipewire
-rwxr-xr-x  1 root root       408320 Mar  5  2022  pipewire-media-session
-rwxr-xr-x  1 root root        18736 Feb 26  2022  pkaction
-rwxr-xr-x  1 root root        22832 Feb 26  2022  pkcheck
-rwxr-xr-x  1 root root        59704 Mar 14  2022  pkcon
-rwsr-xr-x  1 root root        30872 Feb 26  2022  pkexec
lrwxrwxrwx  1 root root            5 Oct 31 12:36  pkill -> pgrep
-rwxr-xr-x  1 root root        22840 Mar 14  2022  pkmon
-rwxr-xr-x  1 root root        18736 Feb 26  2022  pkttyagent
-rwxr-xr-x  1 root root         4536 Nov 23 15:56  pl2pm
-rwxr-xr-x  1 root root        22904 Jan  2 14:22  pldd
-rwxr-xr-x  1 root root        47408 Mar 18  2022  plymouth
-rwxr-xr-x  1 root root        35064 Oct 31 12:36  pmap
-rwxr-xr-x  1 root root         4137 Nov 23 15:56  pod2html
-rwxr-xr-x  1 root root        15034 Nov 23 15:56  pod2man
-rwxr-xr-x  1 root root        10803 Nov 23 15:56  pod2text
-rwxr-xr-x  1 root root         4107 Nov 23 15:56  pod2usage
-rwxr-xr-x  1 root root         3658 Nov 23 15:56  podchecker
-rwxr-xr-x  1 root root        68176 Jan  8 15:56  pr
-rwxr-xr-x  1 root root         5656 Mar 23  2022  precat
-rwxr-xr-x  1 root root        55784 Mar 23  2022  preconv
-rwxr-xr-x  1 root root         5656 Mar 23  2022  preunzip
-rwxr-xr-x  1 root root         5656 Mar 23  2022  prezip
-rwxr-xr-x  1 root root        14640 Mar 23  2022  prezip-bin
-rwxr-xr-x  1 root root        31112 Jan  8 15:56  printenv
-rwxr-xr-x  1 root root        51648 Jan  8 15:56  printf
-rwxr-xr-x  1 root root        27528 Feb 21  2022  prlimit
lrwxrwxrwx  1 root root           16 Feb 29 15:03  pro -> ubuntu-advantage
-rwxr-xr-x  1 root root        13658 Nov 23 15:56  prove
-rwxr-xr-x  1 root root        22912 Mar 24  2022  prtstat
-rwxr-xr-x  1 root root       141776 Oct 31 12:36  ps
lrwxrwxrwx  1 root root            9 Dec 16  2022  psfaddtable -> psfxtable
lrwxrwxrwx  1 root root            9 Dec 16  2022  psfgettable -> psfxtable
lrwxrwxrwx  1 root root            9 Dec 16  2022  psfstriptable -> psfxtable
-rwxr-xr-x  1 root root        26856 Dec 16  2022  psfxtable
-rwxr-xr-x  1 root root        14640 Mar 24  2022  pslog
-rwxr-xr-x  1 root root        36168 Mar 24  2022  pstree
lrwxrwxrwx  1 root root            6 Mar 24  2022  pstree.x11 -> pstree
-rwxr-xr-x  1 root root         3566 Nov 23 15:56  ptar
-rwxr-xr-x  1 root root         2645 Nov 23 15:56  ptardiff
-rwxr-xr-x  1 root root         4395 Nov 23 15:56  ptargrep
-rwxr-xr-x  1 root root       129592 Jan  8 15:56  ptx
-rwxr-xr-x  1 root root         1149 Feb 17  2020  purge-old-kernels
-rwxr-xr-x  1 root root       141696 Nov  9  2022  pw-cat
-rwxr-xr-x  1 root root       137600 Nov  9  2022  pw-cli
-rwxr-xr-x  1 root root        35200 Nov  9  2022  pw-dot
lrwxrwxrwx  1 root root            6 Nov  9  2022  pw-dsdplay -> pw-cat
-rwxr-xr-x  1 root root        96640 Nov  9  2022  pw-dump
-rwxr-xr-x  1 root root        31104 Nov  9  2022  pw-link
-rwxr-xr-x  1 root root        18816 Nov  9  2022  pw-loopback
-rwxr-xr-x  1 root root        14720 Nov  9  2022  pw-metadata
-rwxr-xr-x  1 root root        35200 Nov  9  2022  pw-mididump
lrwxrwxrwx  1 root root            6 Nov  9  2022  pw-midiplay -> pw-cat
lrwxrwxrwx  1 root root            6 Nov  9  2022  pw-midirecord -> pw-cat
-rwxr-xr-x  1 root root        92592 Nov  9  2022  pw-mon
lrwxrwxrwx  1 root root            6 Nov  9  2022  pw-play -> pw-cat
-rwxr-xr-x  1 root root        27008 Nov  9  2022  pw-profiler
lrwxrwxrwx  1 root root            6 Nov  9  2022  pw-record -> pw-cat
-rwxr-xr-x  1 root root        27008 Nov  9  2022  pw-reserve
-rwxr-xr-x  1 root root        31104 Nov  9  2022  pw-top
-rwxr-xr-x  1 root root         1992 Nov  9  2022  pw-v4l2
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  pwd
-rwxr-xr-x  1 root root        14568 Oct 31 12:36  pwdx
-rwxr-xr-x  1 root root         7813 Aug 18  2022  py3clean
-rwxr-xr-x  1 root root        13191 Aug 18  2022  py3compile
lrwxrwxrwx  1 root root           31 Aug 18  2022  py3versions -> ../share/python3/py3versions.py
lrwxrwxrwx  1 root root            9 Aug 18  2022  pydoc3 -> pydoc3.10
-rwxr-xr-x  1 root root           79 Nov 20 16:14  pydoc3.10
lrwxrwxrwx  1 root root           13 Aug 18  2022  pygettext3 -> pygettext3.10
-rwxr-xr-x  1 root root        24235 Jun  7  2023  pygettext3.10
lrwxrwxrwx  1 root root           10 Aug 18  2022  python3 -> python3.10
-rwxr-xr-x  1 root root      5904904 Nov 20 16:14  python3.10
lrwxrwxrwx  1 root root           23 Jan 23 16:08  ranlib -> x86_64-linux-gnu-ranlib
lrwxrwxrwx  1 root root            4 Mar 14 12:31  rbash -> bash
lrwxrwxrwx  1 root root           21 Nov 22 22:37  rcp -> /etc/alternatives/rcp
-rwxr-xr-x  1 root root       100880 Mar 24  2022  rdma
lrwxrwxrwx  1 root root           24 Jan 23 16:08  readelf -> x86_64-linux-gnu-readelf
-rwxr-xr-x  1 root root        39336 Jan  8 15:56  readlink
-rwxr-xr-x  1 root root        39336 Jan  8 15:56  realpath
-rwxr-xr-x  1 root root           89 Feb 13  2022  red
-rwxr-xr-x  1 root root        14712 Feb 21  2022  renice
lrwxrwxrwx  1 root root            4 May 16  2023  reset -> tset
-rwxr-xr-x  1 root root        26952 Dec 16  2022  resizecons
-rwxr-xr-x  1 root root        22904 Feb 21  2022  resizepart
-rwxr-xr-x  1 root root       133656 Nov 21 21:57  resolvectl
-rwxr-xr-x  1 root root        14712 Feb 21  2022  rev
-rwxr-xr-x  1 root root           30 Jan 29  2020  rgrep
lrwxrwxrwx  1 root root           24 Nov 22 22:37  rlogin -> /etc/alternatives/rlogin
-rwxr-xr-x  1 root root        59912 Jan  8 15:56  rm
-rwxr-xr-x  1 root root        43432 Jan  8 15:56  rmdir
lrwxrwxrwx  1 root root            4 Feb 19  2022  rnano -> nano
-rwxr-xr-x  1 root root     12650408 Mar  6 17:32  rootlesskit
-rwxr-xr-x  1 root root      7902224 Mar  6 17:32  rootlesskit-docker-proxy
-rwxr-xr-x  1 root root          208 Mar 24  2022  routef
-rwxr-xr-x  1 root root         1656 Mar 24  2022  routel
-rwxr-xr-x  1 root root        12639 Feb 27  2023  rrsync
lrwxrwxrwx  1 root root           21 Nov 22 22:37  rsh -> /etc/alternatives/rsh
-rwxr-xr-x  1 root root       518272 Feb 27  2023  rsync
-rwxr-xr-x  1 root root         5136 Feb 27  2023  rsync-ssl
lrwxrwxrwx  1 root root            6 Mar 24  2022  rtstat -> lnstat
-rwxr-xr-x  1 root root         3592 Jan 15  2014  run-one
lrwxrwxrwx  1 root root            7 Jan 15  2014  run-one-constantly -> run-one
lrwxrwxrwx  1 root root            7 Jan 15  2014  run-one-until-failure -> run-one
lrwxrwxrwx  1 root root            7 Jan 15  2014  run-one-until-success -> run-one
-rwxr-xr-x  1 root root        27176 Mar 23  2022  run-parts
lrwxrwxrwx  1 root root            7 Jan 15  2014  run-this-one -> run-one
-rwxr-xr-x  1 root root           57 Mar 23  2022  run-with-aspell
-rwxr-xr-x  1 root root      9725256 Jan 31 12:02  runc
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  runcon
lrwxrwxrwx  1 root root           23 Nov 22 22:36  rview -> /etc/alternatives/rview
lrwxrwxrwx  1 root root           22 Nov 22 22:37  rvim -> /etc/alternatives/rvim
-rwxr-xr-x  1 root root        10487 Mar 23  2022  savelog
-rwxr-xr-x  1 root root       133720 Jan  2 17:54  scp
-rwxr-xr-x  1 root root       481512 Feb  2  2022  screen
-rwxr-xr-x  1 root root        14488 Dec 16  2022  screendump
-rwxr-xr-x  1 root root        51576 Feb 21  2022  script
-rwxr-xr-x  1 root root        43384 Feb 21  2022  scriptlive
-rwxr-xr-x  1 root root        35192 Feb 21  2022  scriptreplay
-rwxr-xr-x  1 root root        47504 Mar 23  2022  sdiff
-rwxr-xr-x  1 root root       113224 Mar 25  2022  sed
-rwxr-xr-x  1 root root          474 Dec  2  2021  select-default-iwrap
-rwxr-xr-x  1 root root         2450 Aug 29  2021  select-editor
-rwxr-xr-x  1 root root         1290 Aug 29  2021  sensible-browser
-rwxr-xr-x  1 root root         1269 Aug 29  2021  sensible-editor
-rwxr-xr-x  1 root root          565 Aug 29  2021  sensible-pager
-rwxr-xr-x  1 root root        47624 Jan  8 15:56  seq
-rwxr-xr-x  1 root root        22680 Mar 17  2022  session-migration
-rwxr-xr-x  1 root root        27280 Feb 21  2022  setarch
-rwxr-xr-x  1 root root        51528 Dec 16  2022  setfont
-rwxr-xr-x  1 root root        14568 Dec 16  2022  setkeycodes
-rwxr-xr-x  1 root root        18648 Dec 16  2022  setleds
-rwxr-xr-x  1 root root        14568 Dec 16  2022  setlogcons
-rwxr-xr-x  1 root root        14600 Dec 16  2022  setmetamode
-rwxr-xr-x  1 root root        31112 Aug 30  2021  setpci
-rwxr-xr-x  1 root root        39296 Feb 21  2022  setpriv
-rwxr-xr-x  1 root root        14712 Feb 21  2022  setsid
-rwxr-xr-x  1 root root        35192 Feb 21  2022  setterm
-rwxr-xr-x  1 root root        39233 Nov 22  2021  setupcon
-rwxr-xr-x  1 root root       146088 Jan  2 17:54  sftp
lrwxrwxrwx  1 root root            6 Feb  6 13:54  sg -> newgrp
lrwxrwxrwx  1 root root            4 Nov 22 22:36  sh -> dash
-rwxr-xr-x  1 root root        43432 Jan  8 15:56  sha1sum
-rwxr-xr-x  1 root root        51624 Jan  8 15:56  sha224sum
-rwxr-xr-x  1 root root        51624 Jan  8 15:56  sha256sum
-rwxr-xr-x  1 root root        59816 Jan  8 15:56  sha384sum
-rwxr-xr-x  1 root root        59816 Jan  8 15:56  sha512sum
-rwxr-xr-x  1 root root         9979 Nov 23 15:56  shasum
-rwxr-xr-x  1 root root        18664 Dec 16  2022  showconsolefont
-rwxr-xr-x  1 root root        18664 Dec 16  2022  showkey
-rwxr-xr-x  1 root root        51720 Jan  8 15:56  shred
-rwxr-xr-x  1 root root        47624 Jan  8 15:56  shuf
lrwxrwxrwx  1 root root           21 Jan 23 16:08  size -> x86_64-linux-gnu-size
-rwxr-xr-x  1 root root        30952 Oct 31 12:36  skill
-rwxr-xr-x  1 root root        22768 Oct 31 12:36  slabtop
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  sleep
-rwxr-xr-x  1 root root        51992 Mar 24  2021  slirp4netns
lrwxrwxrwx  1 root root            3 Jan  2 17:54  slogin -> ssh
-rwxr-xr-x  1 root root     16138392 May 29  2023  snap
lrwxrwxrwx  1 root root           20 May 29  2023  snapctl -> ../lib/snapd/snapctl
-rwxr-xr-x  1 root root        35048 May 29  2023  snapfuse
lrwxrwxrwx  1 root root            5 Oct 31 12:36  snice -> skill
-rwxr-xr-x  1 root root        31208 Mar 23  2022  soelim
-rwxr-xr-x  1 root root       101176 Jan  8 15:56  sort
-rwxr-xr-x  1 root root       274552 Nov  9  2022  spa-acp-tool
-rwxr-xr-x  1 root root        80360 Nov  9  2022  spa-inspect
-rwxr-xr-x  1 root root        14648 Nov  9  2022  spa-json-dump
-rwxr-xr-x  1 root root        14824 Nov  9  2022  spa-monitor
-rwxr-xr-x  1 root root        31336 Nov  9  2022  spa-resample
-rwxr-xr-x  1 root root        19414 Nov 23 15:56  splain
-rwxr-xr-x  1 root root        52192 Jan  8 15:56  split
-rwxr-xr-x  1 root root        14488 Dec 16  2022  splitfont
lrwxrwxrwx  1 root root           10 Mar 25  2022  sqfscat -> unsquashfs
lrwxrwxrwx  1 root root           10 Mar 25  2022  sqfstar -> mksquashfs
-rwxr-xr-x  1 root root       128072 Mar 24  2022  ss
-rwxr-xr-x  1 root root       846888 Jan  2 17:54  ssh
-rwxr-xr-x  1 root root       170416 Jan  2 17:54  ssh-add
-rwxr-sr-x  1 root _ssh       293304 Jan  2 17:54  ssh-agent
-rwxr-xr-x  1 root root         1455 Jul  7  2021  ssh-argv0
-rwxr-xr-x  1 root root        12676 Feb 23  2022  ssh-copy-id
-rwxr-xr-x  1 root root       457152 Jan  2 17:54  ssh-keygen
-rwxr-xr-x  1 root root       195008 Jan  2 17:54  ssh-keyscan
-rwxr-xr-x  1 root root        80400 Jan  8 15:56  stat
lrwxrwxrwx  1 root root            7 Feb  4  2022  static-sh -> busybox
-rwxr-xr-x  1 root root        43528 Jan  8 15:56  stdbuf
-rwxr-xr-x  1 root root      1972848 Feb 16  2022  strace
-rwxr-xr-x  1 root root         1821 Feb 16  2021  strace-log-merge
-rwxr-xr-x  1 root root         7941 Nov 23 15:56  streamzip
lrwxrwxrwx  1 root root           24 Jan 23 16:08  strings -> x86_64-linux-gnu-strings
lrwxrwxrwx  1 root root           22 Jan 23 16:08  strip -> x86_64-linux-gnu-strip
-rwxr-xr-x  1 root root        76296 Jan  8 15:56  stty
-rwsr-xr-x  1 root root        55672 Feb 21  2022  su
-rwsr-xr-x  1 root root       232416 Apr  3  2023  sudo
lrwxrwxrwx  1 root root            4 Apr  3  2023  sudoedit -> sudo
-rwxr-xr-x  1 root root        89744 Apr  3  2023  sudoreplay
-rwxr-xr-x  1 root root        35240 Jan  8 15:56  sum
-rwxr-xr-x  1 root root        35240 Jan  8 15:56  sync
-rwxr-xr-x  1 root root      1115760 Nov 21 21:57  systemctl
lrwxrwxrwx  1 root root           20 Nov 21 21:57  systemd -> /lib/systemd/systemd
-rwxr-xr-x  1 root root      1809160 Nov 21 21:57  systemd-analyze
-rwxr-xr-x  1 root root        18928 Nov 21 21:57  systemd-ask-password
-rwxr-xr-x  1 root root        18816 Nov 21 21:57  systemd-cat
-rwxr-xr-x  1 root root        23016 Nov 21 21:57  systemd-cgls
-rwxr-xr-x  1 root root        39312 Nov 21 21:57  systemd-cgtop
-rwxr-xr-x  1 root root        51744 Nov 21 21:57  systemd-cryptenroll
-rwxr-xr-x  1 root root        27000 Nov 21 21:57  systemd-delta
-rwxr-xr-x  1 root root        18808 Nov 21 21:57  systemd-detect-virt
-rwxr-xr-x  1 root root        22904 Nov 21 21:57  systemd-escape
-rwxr-xr-x  1 root root       121504 Nov 21 21:57  systemd-hwdb
-rwxr-xr-x  1 root root        27000 Nov 21 21:57  systemd-id128
-rwxr-xr-x  1 root root        22928 Nov 21 21:57  systemd-inhibit
-rwxr-xr-x  1 root root        18928 Nov 21 21:57  systemd-machine-id-setup
-rwxr-xr-x  1 root root        51808 Nov 21 21:57  systemd-mount
-rwxr-xr-x  1 root root        22912 Nov 21 21:57  systemd-notify
-rwxr-xr-x  1 root root        18808 Nov 21 21:57  systemd-path
-rwxr-xr-x  1 root root        64072 Nov 21 21:57  systemd-run
-rwxr-xr-x  1 root root        27000 Nov 21 21:57  systemd-socket-activate
-rwxr-xr-x  1 root root        22912 Nov 21 21:57  systemd-stdio-bridge
-rwxr-xr-x  1 root root        47608 Nov 21 21:57  systemd-sysext
-rwxr-xr-x  1 root root        64184 Nov 21 21:57  systemd-sysusers
-rwxr-xr-x  1 root root       100936 Nov 21 21:57  systemd-tmpfiles
-rwxr-xr-x  1 root root        35192 Nov 21 21:57  systemd-tty-ask-password-agent
lrwxrwxrwx  1 root root           13 Nov 21 21:57  systemd-umount -> systemd-mount
-rwxr-xr-x  1 root root        18744 May 16  2023  tabs
-rwxr-xr-x  1 root root       100776 Jan  8 15:56  tac
-rwxr-xr-x  1 root root        68112 Jan  8 15:56  tail
-rwxr-xr-x  1 root root       517952 Dec  5 06:15  tar
-rwxr-xr-x  1 root root        22904 Feb 21  2022  taskset
-rwxr-xr-x  1 root root       129512 Mar 23  2022  tbl
-rwxr-xr-x  1 root root      1331320 Feb  8 14:21  tcpdump
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  tee
lrwxrwxrwx  1 root root           24 Nov 22 22:37  telnet -> /etc/alternatives/telnet
-rwxr-xr-x  1 root root       110144 Mar 24  2022  telnet.netkit
-rwxr-xr-x  1 root root        14360 Mar 23  2022  tempfile
-rwxr-xr-x  1 root root        43456 Jan  8 15:56  test
-rwxr-xr-x  1 root root        88488 May 16  2023  tic
-rwxr-xr-x  1 root root        27160 Mar 25  2022  time
-rwxr-xr-x  1 root root        47480 Nov 21 21:57  timedatectl
-rwxr-xr-x  1 root root        39880 Jan  8 15:56  timeout
-rwxr-xr-x  1 root root        18680 Oct 31 12:36  tload
-rwxr-xr-x  1 root root       971320 Jan 31  2023  tmux
-rwxr-xr-x  1 root root       183192 Mar 25  2022  tnftp
-rwxr-xr-x  1 root root        22840 May 16  2023  toe
-rwxr-xr-x  1 root root       133184 Oct 31 12:36  top
-rwxr-xr-x  1 root root        92680 Jan  8 15:56  touch
-rwxr-xr-x  1 root root        26968 May 16  2023  tput
-rwxr-xr-x  1 root root        47624 Jan  8 15:56  tr
-rwxr-xr-x  1 root root        22672 Feb  5  2022  tracepath
-rwxr-xr-x  1 root root       735856 Mar 23  2022  troff
-rwxr-xr-x  1 root root        26936 Jan  8 15:56  true
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  truncate
-rwxr-xr-x  1 root root         4919 Jan 16  2021  tryaffix
-rwxr-xr-x  1 root root        26944 May 16  2023  tset
-rwxr-xr-x  1 root root        47624 Jan  8 15:56  tsort
-rwxr-xr-x  1 root root        31240 Jan  8 15:56  tty
-rwxr-xr-x  1 root root        15378 Jan  2 14:22  tzselect
lrwxrwxrwx  1 root root           16 Feb 29 15:03  ua -> ubuntu-advantage
-rwxr-xr-x  1 root root         1003 Feb 29 15:03  ubuntu-advantage
lrwxrwxrwx  1 root root           10 Apr 14  2023  ubuntu-bug -> apport-bug
lrwxrwxrwx  1 root root           25 May 29  2023  ubuntu-core-launcher -> ../lib/snapd/snap-confine
-rwxr-xr-x  1 root root        23440 Nov 28 13:18  ubuntu-distro-info
-rwxr-xr-x  1 root root        22783 Jan 26 15:10  ubuntu-security-status
-rwxr-xr-x  1 root root        41883 Jun 16  2020  ucf
-rwxr-xr-x  1 root root        19367 Jun 16  2020  ucfq
-rwxr-xr-x  1 root root        10719 Jun 16  2020  ucfr
-rwxr-xr-x  1 root root        27000 Feb 21  2022  uclampset
-rwxr-xr-x  1 root root      1131856 Nov 21 21:57  udevadm
-rwxr-xr-x  1 root root        22912 Feb 21  2022  ul
-rwsr-xr-x  1 root root        35192 Feb 21  2022  umount
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  uname
-rwxr-xr-x  1 root root        99547 Jan 14  2022  unattended-upgrade
lrwxrwxrwx  1 root root           18 Jan 14  2022  unattended-upgrades -> unattended-upgrade
-rwxr-xr-x  2 root root         2346 Sep  5  2022  uncompress
-rwxr-xr-x  1 root root        35360 Jan  8 15:56  unexpand
-rwxr-xr-x  1 root root         2762 Dec 16  2022  unicode_start
-rwxr-xr-x  1 root root          530 Dec 16  2022  unicode_stop
-rwxr-xr-x  1 root root        43528 Jan  8 15:56  uniq
-rwxr-xr-x  1 root root        31240 Jan  8 15:56  unlink
lrwxrwxrwx  1 root root           24 Nov 22 22:37  unlzma -> /etc/alternatives/unlzma
-rwxr-xr-x  2 root root       137584 Feb  6  2021  unpigz
-rwxr-xr-x  1 root root        31328 Feb 21  2022  unshare
-rwxr-xr-x  1 root root       135064 Mar 25  2022  unsquashfs
lrwxrwxrwx  1 root root            2 Apr  8  2022  unxz -> xz
-rwxr-xr-x  2 root root       174512 Feb  1 16:52  unzip
-rwxr-xr-x  1 root root        80304 Feb  1 16:52  unzipsfx
-rwxr-xr-x  1 root root        59640 Feb 23 15:53  update-alternatives
-rwxr-xr-x  1 root root        59624 Jan 14  2022  update-mime-database
-rwxr-xr-x  1 root root        14568 Oct 31 12:36  uptime
-rwxr-xr-x  1 root root         4429 Mar 25  2022  usb-devices
-rwxr-xr-x  1 root root        31112 Mar 25  2022  usbhid-dump
-rwxr-xr-x  1 root root        14640 Mar 25  2022  usbreset
-rwxr-xr-x  1 root root        35336 Jan  8 15:56  users
-rwxr-xr-x  1 root root        22904 Feb 21  2022  utmpdump
-rwxr-xr-x  1 root root        14712 Feb 21  2022  uuidgen
-rwxr-xr-x  1 root root        22904 Feb 21  2022  uuidparse
-rwxr-xr-x  1 root root       138216 Jan  8 15:56  vdir
lrwxrwxrwx  1 root root           20 Nov 22 22:36  vi -> /etc/alternatives/vi
lrwxrwxrwx  1 root root           22 Nov 22 22:36  view -> /etc/alternatives/view
-rwxr-xr-x  1 root root         2640 Feb 17  2020  vigpg
lrwxrwxrwx  1 root root           21 Nov 22 22:37  vim -> /etc/alternatives/vim
-rwxr-xr-x  1 root root      3787824 Mar 14 10:05  vim.basic
-rwxr-xr-x  1 root root      1520320 Mar 14 10:05  vim.tiny
lrwxrwxrwx  1 root root           25 Nov 22 22:37  vimdiff -> /etc/alternatives/vimdiff
-rwxr-xr-x  1 root root         2154 Mar 14 10:05  vimtutor
-rwxr-xr-x  1 root root        39160 Oct 31 12:36  vmstat
-rwxr-xr-x  1 root root        22760 Oct 31 12:36  w
-rwxr-sr-x  1 root tty         22904 Feb 21  2022  wall
-rwxr-xr-x  1 root root        27240 Oct 31 12:36  watch
-rwxr-xr-x  1 root root        18744 Jul  4  2022  watchgnupg
-rwxr-xr-x  1 root root        43440 Jan  8 15:56  wc
-rwxr-xr-x  1 root root        31120 Feb 21  2022  wdctl
-rwxr-xr-x  1 root root       527376 Jan 24  2022  wget
-rwxr-xr-x  1 root root        48416 Mar 17  2022  whatis
-rwxr-xr-x  1 root root        31560 Feb 21  2022  whereis
lrwxrwxrwx  1 root root           23 Nov 22 22:36  which -> /etc/alternatives/which
-rwxr-xr-x  1 root root          946 Mar 23  2022  which.debianutils
-rwxr-xr-x  1 root root        30888 Mar 17  2022  whiptail
-rwxr-xr-x  1 root root        51736 Jan  8 15:56  who
-rwxr-xr-x  1 root root        31240 Jan  8 15:56  whoami
-rwxr-xr-x  1 root root         2107 Feb 17  2020  wifi-status
-rwxr-xr-x  1 root root        26632 Aug 20  2018  wmdocker
-rwxr-xr-x  1 root root        14640 Mar 23  2022  word-list-compress
lrwxrwxrwx  1 root root           23 Nov 22 22:37  write -> /etc/alternatives/write
-rwxr-sr-x  1 root tty         22912 Feb 21  2022  write.ul
lrwxrwxrwx  1 root root            5 Mar  8 11:20  wslinfo -> /init
lrwxrwxrwx  1 root root            5 Mar  8 11:20  wslpath -> /init
lrwxrwxrwx  1 root root            7 Feb 21  2022  x86_64 -> setarch
-rwxr-xr-x  1 root root        27344 Jan 23 16:08  x86_64-linux-gnu-addr2line
-rwxr-xr-x  1 root root        55792 Jan 23 16:08  x86_64-linux-gnu-ar
-rwxr-xr-x  1 root root       467352 Jan 23 16:08  x86_64-linux-gnu-as
-rwxr-xr-x  1 root root        22800 Jan 23 16:08  x86_64-linux-gnu-c++filt
-rwxr-xr-x  1 root root      1904000 Jan 23 16:08  x86_64-linux-gnu-dwp
-rwxr-xr-x  1 root root        35552 Jan 23 16:08  x86_64-linux-gnu-elfedit
lrwxrwxrwx  1 root root           24 Jan 23 16:08  x86_64-linux-gnu-gold -> x86_64-linux-gnu-ld.gold
-rwxr-xr-x  1 root root       114472 Jan 23 16:08  x86_64-linux-gnu-gprof
lrwxrwxrwx  1 root root           23 Jan 23 16:08  x86_64-linux-gnu-ld -> x86_64-linux-gnu-ld.bfd
-rwxr-xr-x  1 root root      1744376 Jan 23 16:08  x86_64-linux-gnu-ld.bfd
-rwxr-xr-x  1 root root      3189920 Jan 23 16:08  x86_64-linux-gnu-ld.gold
-rwxr-xr-x  1 root root        44672 Jan 23 16:08  x86_64-linux-gnu-nm
-rwxr-xr-x  1 root root       166440 Jan 23 16:08  x86_64-linux-gnu-objcopy
-rwxr-xr-x  1 root root       373888 Jan 23 16:08  x86_64-linux-gnu-objdump
-rwxr-xr-x  1 root root        55792 Jan 23 16:08  x86_64-linux-gnu-ranlib
-rwxr-xr-x  1 root root       776640 Jan 23 16:08  x86_64-linux-gnu-readelf
-rwxr-xr-x  1 root root        31184 Jan 23 16:08  x86_64-linux-gnu-size
-rwxr-xr-x  1 root root        31344 Jan 23 16:08  x86_64-linux-gnu-strings
-rwxr-xr-x  1 root root       166472 Jan 23 16:08  x86_64-linux-gnu-strip
-rwxr-xr-x  1 root root        63912 Mar 23  2022  xargs
-rwxr-xr-x  1 root root        56280 Mar 25  2022  xauth
-rwxr-xr-x  1 root root        51344 Feb 11  2022  xdg-dbus-proxy
-rwxr-xr-x  1 root root          234 Mar 25  2022  xdg-user-dir
-rwxr-xr-x  1 root root        26856 Mar 25  2022  xdg-user-dirs-update
-rwxr-xr-x  1 root root         5167 Nov 23 15:56  xsubpp
-rwxr-xr-x  1 root root        18720 Mar 14 10:05  xxd
-rwxr-xr-x  1 root root        84504 Apr  8  2022  xz
lrwxrwxrwx  1 root root            2 Apr  8  2022  xzcat -> xz
lrwxrwxrwx  1 root root            6 Apr  8  2022  xzcmp -> xzdiff
-rwxr-xr-x  1 root root         7023 Apr  8  2022  xzdiff
lrwxrwxrwx  1 root root            6 Apr  8  2022  xzegrep -> xzgrep
lrwxrwxrwx  1 root root            6 Apr  8  2022  xzfgrep -> xzgrep
-rwxr-xr-x  1 root root         6015 Apr  8  2022  xzgrep
-rwxr-xr-x  1 root root         1799 Apr  8  2022  xzless
-rwxr-xr-x  1 root root         2162 Apr  8  2022  xzmore
-rwxr-xr-x  1 root root        67816 Mar 28  2022  yelp
-rwxr-xr-x  1 root root        31112 Jan  8 15:56  yes
lrwxrwxrwx  1 root root            8 Mar 23  2022  ypdomainname -> hostname
-rwxr-xr-x  1 root root         1984 Sep  5  2022  zcat
-rwxr-xr-x  1 root root         1678 Sep  5  2022  zcmp
-rwxr-xr-x  1 root root         5898 Sep  5  2022  zdiff
-rwxr-xr-x  1 root root        26840 Jan  2 14:22  zdump
-rwxr-xr-x  1 root root           29 Sep  5  2022  zegrep
-rwxr-xr-x  1 root root       131840 May  1  2022  zenity
-rwxr-xr-x  1 root root           29 Sep  5  2022  zfgrep
-rwxr-xr-x  1 root root         2081 Sep  5  2022  zforce
-rwxr-xr-x  1 root root         8103 Sep  5  2022  zgrep
-rwxr-xr-x  1 root root       203768 Mar 25  2022  zip
-rwxr-xr-x  1 root root        72088 Mar 25  2022  zipcloak
-rwxr-xr-x  1 root root        60065 Nov 23 15:56  zipdetails
-rwxr-xr-x  1 root root         2959 Feb  1 16:52  zipgrep
-rwxr-xr-x  2 root root       174512 Feb  1 16:52  zipinfo
-rwxr-xr-x  1 root root        63896 Mar 25  2022  zipnote
-rwxr-xr-x  1 root root        59800 Mar 25  2022  zipsplit
-rwxr-xr-x  1 root root         2206 Sep  5  2022  zless
-rwxr-xr-x  1 root root         1842 Sep  5  2022  zmore
-rwxr-xr-x  1 root root         4577 Sep  5  2022  znew
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices$ man sort
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices$ cd /bin
kra231@DESKTOP-IPCC9HB:/bin$ ls -l | sort -nr -k 5
-rwxr-xr-x 1 root root    101077008 Mar  6 17:32 dockerd
-rwxr-xr-x 1 root root     53459832 Jan 31 12:02 containerd
-rwxr-xr-x 1 root root     36784536 Mar  6 17:32 docker
-rwxr-xr-x 1 root root     27596792 Jan 31 12:02 ctr
-rwxr-xr-x 1 root root     16138392 May 29  2023 snap
-rwxr-xr-x 1 root root     12650408 Mar  6 17:32 rootlesskit
-rwxr-xr-x 1 root root     10087000 Jan 31 12:02 containerd-shim-runc-v2
-rwxr-xr-x 1 root root     10061976 Jan 31 12:02 containerd-shim-runc-v1
-rwxr-xr-x 1 root root      9725256 Jan 31 12:02 runc
-rwxr-xr-x 1 root root      7949176 Jan 31 12:02 containerd-shim
-rwxr-xr-x 1 root root      7902224 Mar  6 17:32 rootlesskit-docker-proxy
-rwxr-xr-x 1 root root      5904904 Nov 20 16:14 python3.10
-rwxr-xr-x 2 root root      3802104 Nov 23 15:56 perl5.34.0
-rwxr-xr-x 2 root root      3802104 Nov 23 15:56 perl
-rwxr-xr-x 1 root root      3787824 Mar 14 10:05 vim.basic
-rwxr-xr-x 1 root root      3702168 Jul  7  2023 git
-rwxr-xr-x 1 root root      3189920 Jan 23 16:08 x86_64-linux-gnu-ld.gold
-rwxr-xr-x 1 root root      2193349 Mar  6 17:32 docker-proxy
-rwxr-xr-x 1 root root      2193264 Feb  4  2022 busybox
-rwxr-xr-x 1 root root      1972848 Feb 16  2022 strace
-rwxr-xr-x 1 root root      1904000 Jan 23 16:08 x86_64-linux-gnu-dwp
-rwxr-xr-x 1 root root      1809160 Nov 21 21:57 systemd-analyze
-rwxr-xr-x 1 root root      1744376 Jan 23 16:08 x86_64-linux-gnu-ld.bfd
-rwxr-xr-x 1 root root      1520320 Mar 14 10:05 vim.tiny
-rwxr-xr-x 1 root root      1396520 Mar 14 12:31 bash
-rwxr-xr-x 1 root root      1331320 Feb  8 14:21 tcpdump
-rwxr-xr-x 1 root root      1131856 Nov 21 21:57 udevadm
-rwxr-xr-x 1 root root      1115760 Nov 21 21:57 systemctl
-rwxr-xr-x 1 root root      1050624 Jul  4  2022 gpg
-rwxr-xr-x 1 root root      1001272 Feb 16 09:51 openssl
-rwxr-xr-x 1 root root       971320 Jan 31  2023 tmux
-rwxr-xr-x 1 root root       922824 Mar 24  2022 lshw
-rwxr-xr-x 1 root root       846888 Jan  2 17:54 ssh
-rwxr-xr-x 1 root root       776640 Jan 23 16:08 x86_64-linux-gnu-readelf
-rwxr-xr-x 1 root root       735856 Mar 23  2022 troff
-rwxr-xr-x 1 root root       718896 Mar 24  2022 ip
-rwxr-xr-x 1 root root       704984 Aug 17  2023 gawk
-rwxr-xr-x 1 root root       565840 Jul  7  2023 git-shell
-rwxr-xr-x 1 root root       527376 Jan 24  2022 wget
-rwxr-xr-x 1 root root       518272 Feb 27  2023 rsync
-rwxr-xr-x 1 root root       517952 Dec  5 06:15 tar
-rwxr-xr-x 1 root root       508400 Jul  4  2022 gpgcompose
-rwxr-xr-x 1 root root       481512 Feb  2  2022 screen
-rwxr-xr-x 1 root root       467352 Jan 23 16:08 x86_64-linux-gnu-as
-rwxr-xr-x 1 root root       457152 Jan  2 17:54 ssh-keygen
-rwxr-xr-x 1 root root       443408 Jul  4  2022 dirmngr
-rwxr-xr-x 1 root root       428952 Jul  4  2022 gpgsm
-rwxr-xr-x 1 root root       408320 Mar  5  2022 pipewire-media-session
-rwxr-xr-x 1 root root       373888 Jan 23 16:08 x86_64-linux-gnu-objdump
-rwxr-xr-x 1 root root       334808 Jan  2 14:22 localedef
-rwxr-xr-x 1 root root       320472 Jul  4  2022 gpg-agent
-rwxr-xr-x 1 root root       318144 Feb 23 15:53 dpkg
-rwxr-xr-x 1 root root       308984 Feb  6  2022 info
-rwxr-xr-x 1 root root       303512 Apr  3  2023 cvtsudoers
-rwxr-sr-x 1 root _ssh       293304 Jan  2 17:54 ssh-agent
-rwxr-xr-x 1 root root       283840 Mar 23  2022 htop
-rwxr-xr-x 1 root root       283144 Feb 19  2022 nano
-rwxr-xr-x 1 root root       282088 Mar 23  2022 find
-rwxr-xr-x 1 root root       277544 Jul  4  2022 gpgv
-rwxr-xr-x 1 root root       274552 Nov  9  2022 spa-acp-tool
-rwxr-xr-x 1 root root       260792 Mar 25  2022 mksquashfs
-rwxr-xr-x 1 root root       260328 Nov 29 20:23 curl
-rwxr-xr-x 1 root root       252432 Mar 25  2022 lsusb
-rwxr-xr-x 1 root root       236008 Oct  6 10:53 apt-ftparchive
-rwxr-xr-x 1 root root       232776 Oct 25  2022 dbus-daemon
-rwsr-xr-x 1 root root       232416 Apr  3  2023 sudo
-rwxr-xr-x 1 root root       204840 Mar 23  2022 pic
-rwxr-xr-x 1 root root       203768 Mar 25  2022 zip
-rwxr-xr-x 1 root root       203528 Dec 16  2022 loadkeys
-rwxr-xr-x 1 root root       199048 Feb 20 14:07 less
-rwxr-xr-x 1 root root       195008 Jan  2 17:54 ssh-keyscan
-rwxr-xr-x 1 root root       192968 Mar 23  2022 eqn
-rwxr-xr-x 1 root root       190992 Mar 24  2022 patch
-rwxr-xr-x 1 root root       183192 Mar 25  2022 tnftp
-rwxr-xr-x 1 root root       182728 Mar 23  2022 grep
-rwxr-xr-x 2 root root       174512 Feb  1 16:52 zipinfo
-rwxr-xr-x 2 root root       174512 Feb  1 16:52 unzip
-rwxr-xr-x 1 root root       170416 Jan  2 17:54 ssh-add
-rwxr-xr-x 1 root root       170352 Aug 17  2021 kmod
-rwxr-xr-x 1 root root       167544 Mar 24  2022 lsof
-rwxr-xr-x 1 root root       166472 Jan 23 16:08 x86_64-linux-gnu-strip
-rwxr-xr-x 1 root root       166456 Mar 23  2022 grops
-rwxr-xr-x 1 root root       166440 Jan 23 16:08 x86_64-linux-gnu-objcopy
-rwxr-xr-x 1 root root       162824 Nov  1  2022 ntfs-3g
-rwxr-xr-x 1 root root       162520 Dec 16  2022 dumpkeys
-rwxr-xr-x 1 root root       158504 Jan 23  2022 mawk
-rwxr-xr-x 1 root root       150352 Feb 12 20:29 dig
-rwxr-xr-x 1 root root       150024 Jan  8 15:56 du
-rwxr-xr-x 1 root root       149817 Nov 22  2021 ckbcomp
-rwxr-xr-x 1 root root       146088 Jan  2 17:54 sftp
-rwxr-xr-x 1 root root       145944 Jan  8 15:56 install
-rwxr-xr-x 1 root root       145904 Mar 23  2022 aspell
-rwxr-xr-x 1 root root       143296 Mar 17  2022 mandb
-rwxr-xr-x 1 root root       141848 Feb 23 15:53 dpkg-query
-rwxr-xr-x 1 root root       141832 Jan  8 15:56 cp
-rwxr-xr-x 1 root root       141776 Oct 31 12:36 ps
-rwxr-xr-x 1 root root       141696 Nov  9  2022 pw-cat
-rwxr-xr-x 1 root root       140928 Aug 22  2021 cpio
-rwxr-xr-x 1 root root       138216 Jan  8 15:56 vdir
-rwxr-xr-x 1 root root       138216 Jan  8 15:56 ls
-rwxr-xr-x 1 root root       138216 Jan  8 15:56 dir
-rwxr-xr-x 1 root root       137752 Jan  8 15:56 mv
-rwxr-xr-x 1 root root       137720 Feb 23 15:53 dpkg-deb
-rwxr-xr-x 1 root root       137600 Nov  9  2022 pw-cli
-rwxr-xr-x 2 root root       137584 Feb  6  2021 unpigz
-rwxr-xr-x 2 root root       137584 Feb  6  2021 pigz
-rwxr-xr-x 1 root root       135064 Mar 25  2022 unsquashfs
-rwxr-xr-x 1 root root       133720 Jan  2 17:54 scp
-rwxr-xr-x 1 root root       133680 Mar 23  2022 diff
-rwxr-xr-x 1 root root       133656 Nov 21 21:57 resolvectl
-rwxr-xr-x 1 root root       133184 Oct 31 12:36 top
-rwxr-xr-x 1 root root       131840 May  1  2022 zenity
-rwxr-xr-x 1 root root       129776 Jul  4  2022 gpgconf
-rwxr-xr-x 1 root root       129592 Jan  8 15:56 ptx
-rwxr-xr-x 1 root root       129512 Mar 23  2022 tbl
-rwxr-xr-x 1 root root       128072 Mar 24  2022 ss
-rwxr-xr-x 1 root root       125688 Mar 23  2022 dash
-rwxr-xr-x 1 root root       125312 Feb 21  2022 lsblk
-rwxr-xr-x 1 root root       121672 Feb 12 20:29 nslookup
-rwxr-xr-x 1 root root       121672 Feb 12 20:29 host
-rwxr-xr-x 1 root root       121504 Nov 21 21:57 systemd-hwdb
-rwxr-xr-x 1 root root       121368 Mar 23  2022 grotty
-rwxr-xr-x 1 root root       121336 Feb 23 15:53 dpkg-divert
-rwxr-xr-x 1 root root       121144 May  9  2022 broadwayd
-rwxr-xr-x 1 root root       120504 Mar 17  2022 man
-rwxr-xr-x 1 root root       117816 Jul  4  2022 gpg-wks-server
-rwxr-xr-x 1 root root       117736 Nov  1  2022 lowntfs-3g
-rwxr-xr-x 1 root root       114472 Jan 23 16:08 x86_64-linux-gnu-gprof
-rwxr-xr-x 1 root root       113224 Mar 25  2022 sed
-rwxr-xr-x 1 root root       110144 Mar 24  2022 telnet.netkit
-rwxr-xr-x 1 root root       109064 Jan  8 15:56 csplit
-rwxr-xr-x 1 root root       108928 Nov  1  2022 ntfsrecover
-rwxr-xr-x 1 root root       105704 Feb  6  2022 install-info
-rwxr-xr-x 1 root root       105232 Jan 16  2021 ispell
-rwxr-xr-x 1 root root       104968 Jan  8 15:56 date
-rwxr-xr-x 1 root root       104872 Jan  8 15:56 expr
-rwxr-xr-x 1 root root       104832 Nov 21 21:57 networkctl
-rwxr-xr-x 1 root root       102144 Mar 17  2022 lexgrog
-rwxr-xr-x 1 root root       101176 Jan  8 15:56 sort
-rwxr-xr-x 1 root root       100936 Nov 21 21:57 systemd-tmpfiles
-rwxr-xr-x 1 root root       100936 Jan  8 15:56 nl
-rwxr-xr-x 1 root root       100880 Mar 24  2022 rdma
-rwxr-xr-x 1 root root       100872 Feb 23 15:53 dpkg-split
-rwxr-xr-x 1 root root       100776 Jan  8 15:56 tac
-rwxr-xr-x 1 root root       100728 Feb 21  2022 lscpu
-rwxr-xr-x 1 root root        99547 Jan 14  2022 unattended-upgrade
-rwxr-xr-x 1 root root        96768 Mar 23  2022 groff
-rwxr-xr-x 1 root root        96640 Nov  9  2022 pw-dump
-rwxr-xr-x 1 root root        94288 Aug 30  2021 lspci
-rwxr-xr-x 1 root root        93424 Sep  5  2022 gzip
-rwxr-xr-x 1 root root        92680 Jan  8 15:56 touch
-rwxr-xr-x 1 root root        92664 Nov 21 21:57 busctl
-rwxr-xr-x 1 root root        92592 Nov  9  2022 pw-mon
-rwxr-xr-x 1 root root        92568 Jun  8  2023 gio
-rwxr-xr-x 1 root root        89744 Apr  3  2023 sudoreplay
-rwxr-xr-x 1 root root        88488 May 16  2023 tic
-rwxr-xr-x 1 root root        85072 Jan  8 15:56 df
-rwxr-xr-x 1 root root        84984 Jul  4  2022 gpg-connect-agent
-rwxr-xr-x 1 root root        84504 Apr  8  2022 xz
-rwxr-xr-x 1 root root        84448 Oct  6 10:53 apt-cache
-rwxr-xr-x 1 root root        80752 Nov  1  2022 ntfssecaudit
-rwxr-xr-x 1 root root        80400 Jan  8 15:56 stat
-rwxr-xr-x 1 root root        80360 Nov  9  2022 spa-inspect
-rwxr-xr-x 1 root root        80304 Feb  1 16:52 unzipsfx
-rwxr-xr-x 1 root root        80272 Nov 21 21:57 journalctl
-rwxr-xr-x 1 root root        76672 Feb  5  2022 ping
-rwxr-xr-x 1 root root        76344 Feb 12 20:29 nsupdate
-rwxr-xr-x 1 root root        76296 Jan  8 15:56 stty
-rwxr-xr-x 1 root root        73984 Jan 11  2022 mtr
-rwsr-xr-x 1 root root        72712 Feb  6 13:54 chfn
-rwxr-xr-x 1 root root        72296 Feb 21  2022 dmesg
-rwxr-xr-x 1 root root        72200 Jan  8 15:56 factor
-rwxr-xr-x 1 root root        72184 Nov 21 21:57 bootctl
-rwxr-sr-x 1 root shadow      72184 Feb  6 13:54 chage
-rwxr-xr-x 1 root root        72160 Feb 25  2022 bwrap
-rwxr-xr-x 1 root root        72088 Mar 25  2022 zipcloak
-rwsr-xr-x 1 root root        72072 Feb  6 13:54 gpasswd
-rwxr-xr-x 1 root root        68336 Aug 22  2021 mt-gnu
-rwxr-xr-x 1 root root        68176 Jan  8 15:56 pr
-rwxr-xr-x 1 root root        68120 Jan  8 15:56 dd
-rwxr-xr-x 1 root root        68112 Jan  8 15:56 tail
-rwxr-xr-x 1 root root        68104 Jan  8 15:56 od
-rwxr-xr-x 1 root root        68104 Jan  8 15:56 mkdir
-rwxr-xr-x 1 root root        68000 Jan  2 14:22 iconv
-rwxr-xr-x 1 root root        67816 Mar 28  2022 yelp
-rwxr-xr-x 1 root root        65128 Feb 21  2022 findmnt
-rwxr-xr-x 1 root root        64912 Jul  4  2022 gpgtar
-rwxr-xr-x 1 root root        64336 Jul  4  2022 kbxutil
-rwxr-xr-x 1 root root        64184 Nov 21 21:57 systemd-sysusers
-rwxr-xr-x 1 root root        64072 Nov 21 21:57 systemd-run
-rwxr-xr-x 1 root root        63912 Mar 23  2022 xargs
-rwxr-xr-x 1 root root        63896 Mar 25  2022 zipnote
-rwxr-xr-x 1 root root        63872 May 16  2023 infocmp
-rwxr-xr-x 1 root root        60934 Nov 23 15:56 h2xs
-rwxr-xr-x 1 root root        60065 Nov 23 15:56 zipdetails
-rwxr-xr-x 1 root root        60056 Mar 24  2022 pinentry-curses
-rwsr-xr-x 1 root root        59976 Feb  6 13:54 passwd
-rwxr-xr-x 1 root root        59912 Jan  8 15:56 rm
-rwxr-xr-x 1 root root        59912 Jan  8 15:56 ln
-rwxr-xr-x 1 root root        59912 Jan  8 15:56 chown
-rwxr-xr-x 1 root root        59912 Jan  8 15:56 chcon
-rwxr-xr-x 1 root root        59888 Nov 21 21:57 loginctl
-rwxr-xr-x 1 root root        59816 Jan  8 15:56 sha512sum
-rwxr-xr-x 1 root root        59816 Jan  8 15:56 sha384sum
-rwxr-xr-x 1 root root        59800 Mar 25  2022 zipsplit
-rwxr-xr-x 1 root root        59776 Feb 21  2022 partx
-rwxr-xr-x 1 root root        59704 Mar 14  2022 pkcon
-rwxr-xr-x 1 root root        59640 Feb 23 15:53 update-alternatives
-rwxr-xr-x 1 root root        59624 Jan 14  2022 update-mime-database
-rwxr-xr-x 1 root root        58944 Jan  2 14:22 locale
-rwxr-xr-x 1 root root        56280 Mar 25  2022 xauth
-rwxr-xr-x 1 root root        56240 Jul  4  2022 dirmngr-client
-rwxr-xr-x 1 root root        55848 Jan  8 15:56 numfmt
-rwxr-xr-x 1 root root        55824 Mar 23  2022 diff3
-rwxr-xr-x 1 root root        55816 Jan  8 15:56 chmod
-rwxr-xr-x 1 root root        55816 Jan  8 15:56 chgrp
-rwxr-xr-x 1 root root        55800 Feb 13  2022 ed
-rwxr-xr-x 1 root root        55792 Jan 23 16:08 x86_64-linux-gnu-ranlib
-rwxr-xr-x 1 root root        55792 Jan 23 16:08 x86_64-linux-gnu-ar
-rwxr-xr-x 1 root root        55784 Mar 23  2022 preconv
-rwxr-xr-x 1 root root        55688 Nov  1  2022 ntfsinfo
-rwsr-xr-x 1 root root        55672 Feb 21  2022 su
-rwxr-xr-x 1 root root        52976 Feb  6 13:54 login
-rwxr-xr-x 1 root root        52192 Jan  8 15:56 split
-rwxr-xr-x 1 root root        51992 Mar 24  2021 slirp4netns
-rwxr-xr-x 1 root root        51808 Nov 21 21:57 systemd-mount
-rwxr-xr-x 1 root root        51744 Nov 21 21:57 systemd-cryptenroll
-rwxr-xr-x 1 root root        51736 Jan  8 15:56 who
-rwxr-xr-x 1 root root        51728 Jan  8 15:56 b2sum
-rwxr-xr-x 1 root root        51720 Jan  8 15:56 shred
-rwxr-xr-x 1 root root        51680 Oct  6 10:53 apt-mark
-rwxr-xr-x 1 root root        51680 Oct  6 10:53 apt-get
-rwxr-xr-x 1 root root        51648 Jan  8 15:56 printf
-rwxr-xr-x 1 root root        51648 Jan  8 15:56 [
-rwxr-xr-x 1 root root        51624 Jan  8 15:56 sha256sum
-rwxr-xr-x 1 root root        51624 Jan  8 15:56 sha224sum
-rwxr-xr-x 1 root root        51608 Feb 12 20:29 mdig
-rwxr-xr-x 1 root root        51592 Jun  8  2023 gdbus
-rwxr-xr-x 1 root root        51592 Feb 21  2022 hexdump
-rwxr-xr-x 1 root root        51576 Feb 21  2022 script
-rwxr-xr-x 1 root root        51576 Feb 21  2022 lslogins
-rwxr-xr-x 1 root root        51576 Feb 21  2022 lsipc
-rwxr-xr-x 1 root root        51528 Dec 16  2022 setfont
-rwxr-xr-x 1 root root        51344 Feb 11  2022 xdg-dbus-proxy
-rwxr-xr-x 1 root root        48416 Mar 17  2022 whatis
-rwxr-xr-x 1 root root        47816 Jan 16  2021 buildhash
-rwxr-xr-x 1 root root        47664 Jan  8 15:56 join
-rwxr-xr-x 1 root root        47624 Jan  8 15:56 tsort
-rwxr-xr-x 1 root root        47624 Jan  8 15:56 tr
-rwxr-xr-x 1 root root        47624 Jan  8 15:56 shuf
-rwxr-xr-x 1 root root        47624 Jan  8 15:56 seq
-rwxr-xr-x 1 root root        47624 Jan  8 15:56 basenc
-rwxr-xr-x 1 root root        47608 Nov 21 21:57 systemd-sysext
-rwxr-xr-x 1 root root        47504 Mar 23  2022 sdiff
-rwxr-xr-x 1 root root        47480 Nov 21 21:57 timedatectl
-rwsr-xr-x 1 root root        47480 Feb 21  2022 mount
-rwxr-xr-x 1 root root        47408 Mar 18  2022 plymouth
-rwxr-xr-x 1 root root        47368 Feb 23 15:53 dpkg-statoverride
-rwxr-xr-x 1 root root        45896 Feb 12 20:29 delv
-rwxr-xr-x 2 root root        45183 Nov 23 15:56 perlthanks
-rwxr-xr-x 2 root root        45183 Nov 23 15:56 perlbug
-rwsr-xr-x 1 root root        44808 Feb  6 13:54 chsh
-rwxr-xr-x 1 root root        44672 Jan 23 16:08 x86_64-linux-gnu-nm
-rwxr-xr-x 1 root root        43976 Jan  8 15:56 env
-rwxr-xr-x 1 root root        43936 Nov  1  2022 ntfswipe
-rwxr-xr-x 1 root root        43528 Jan  8 15:56 uniq
-rwxr-xr-x 1 root root        43528 Jan  8 15:56 stdbuf
-rwxr-xr-x 1 root root        43528 Jan  8 15:56 mknod
-rwxr-xr-x 1 root root        43528 Jan  8 15:56 head
-rwxr-xr-x 1 root root        43456 Jan  8 15:56 test
-rwxr-xr-x 1 root root        43440 Jan  8 15:56 wc
-rwxr-xr-x 1 root root        43432 Jan  8 15:56 sha1sum
-rwxr-xr-x 1 root root        43432 Jan  8 15:56 rmdir
-rwxr-xr-x 1 root root        43432 Jan  8 15:56 md5sum
-rwxr-xr-x 1 root root        43424 Feb 23 15:53 dpkg-trigger
-rwxr-xr-x 1 root root        43408 Mar 23  2022 cmp
-rwxr-xr-x 1 root root        43400 Nov  1  2022 ntfsdecrypt
-rwxr-xr-x 1 root root        43392 Feb 21  2022 more
-rwxr-xr-x 1 root root        43384 Feb 21  2022 scriptlive
-rwxr-xr-x 1 root root        43224 Feb 21  2022 eject
-rwxr-xr-x 1 root root        41883 Jun 16  2020 ucf
-rwxr-xr-x 1 root root        41819 Nov 23 15:56 enc2xs
-rwsr-xr-x 1 root root        40496 Feb  6 13:54 newgrp
-rwxr-xr-x 1 root root        40256 Mar 24  2022 fuser
-rwxr-xr-x 1 root root        39880 Jan  8 15:56 timeout
-rwxr-xr-x 1 root root        39624 Jan 16  2021 icombine
-rwxr-xr-x 1 root root        39576 Jan  2 14:22 getent
-rwxr-sr-x 1 root crontab     39568 Mar 23  2022 crontab
-rwxr-xr-x 1 root root        39560 Feb 23  2022 nc.openbsd
-rwxr-xr-x 1 root root        39496 May  9  2022 gtk-update-icon-cache
-rwxr-xr-x 1 root root        39440 Jan  8 15:56 dircolors
-rwxr-xr-x 1 root root        39432 Jan  8 15:56 mktemp
-rwxr-xr-x 1 root root        39432 Jan  8 15:56 mkfifo
-rwxr-xr-x 1 root root        39432 Jan  8 15:56 id
-rwxr-xr-x 1 root root        39432 Jan  8 15:56 fmt
-rwxr-xr-x 1 root root        39432 Jan  8 15:56 cut
-rwxr-xr-x 1 root root        39336 Jan  8 15:56 realpath
-rwxr-xr-x 1 root root        39336 Jan  8 15:56 readlink
-rwxr-xr-x 1 root root        39320 Oct  6 10:53 apt-sortpkgs
-rwxr-xr-x 1 root root        39312 Nov 21 21:57 systemd-cgtop
-rwxr-xr-x 1 root root        39304 Nov  1  2022 ntfscluster
-rwxr-xr-x 1 root root        39296 Feb 21  2022 setpriv
-rwxr-xr-x 1 root root        39296 Feb 21  2022 lsns
-rwxr-xr-x 1 root root        39288 Feb 21  2022 lsmem
-rwxr-xr-x 1 root root        39288 Feb 21  2022 ipcs
-rwxr-xr-x 1 root root        39233 Nov 22  2021 setupcon
-rwxr-xr-x 1 root root        39216 Jan 11  2022 mtr-packet
-rwxr-xr-x 1 root root        39160 Oct 31 12:36 vmstat
-rwxr-xr-x 1 root root        36536 Mar 17  2022 man-recode
-rwxr-xr-x 1 root root        36168 Mar 24  2022 pstree
-rwxr-xr-x 1 root root        35800 Feb 21  2022 logger
-rwxr-xr-x 1 root root        35592 Mar 17  2022 catman
-rwxr-xr-x 1 root root        35568 May  9  2022 gtk-builder-tool
-rwxr-xr-x 1 root root        35552 Jan 23 16:08 x86_64-linux-gnu-elfedit
-rwxr-xr-x 1 root root        35360 Jan  8 15:56 unexpand
-rwxr-xr-x 1 root root        35360 Jan  8 15:56 expand
-rwxr-xr-x 1 root root        35344 Jun  5  2023 aa-exec
-rwxr-xr-x 1 root root        35344 Jun  5  2023 aa-enabled
-rwxr-xr-x 1 root root        35344 Jan  8 15:56 comm
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 users
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 uname
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 truncate
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 tee
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 sleep
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 runcon
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 pwd
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 pathchk
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 nproc
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 nice
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 groups
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 fold
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 basename
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 base64
-rwxr-xr-x 1 root root        35336 Jan  8 15:56 base32
-rwxr-xr-x 1 root root        35288 Jan  8 15:56 cat
-rwxr-xr-x 1 root root        35248 Feb 21  2022 hardlink
-rwxr-xr-x 1 root root        35240 Jan  8 15:56 sync
-rwxr-xr-x 1 root root        35240 Jan  8 15:56 sum
-rwxr-xr-x 1 root root        35240 Jan  8 15:56 pinky
-rwxr-xr-x 1 root root        35240 Jan  8 15:56 paste
-rwxr-xr-x 1 root root        35240 Jan  8 15:56 nohup
-rwxr-xr-x 1 root root        35240 Jan  8 15:56 cksum
-rwxr-xr-x 1 root root        35208 Nov  1  2022 ntfsfix
-rwxr-xr-x 1 root root        35200 Nov  9  2022 pw-mididump
-rwxr-xr-x 1 root root        35200 Nov  9  2022 pw-dot
-rwxr-xr-x 1 root root        35200 Mar 25  2022 ngettext
-rwxr-xr-x 1 root root        35200 Mar 25  2022 gettext
-rwxr-xr-x 1 root root        35200 Mar 25  2022 envsubst
-rwxr-xr-x 1 root root        35200 Jul  4  2022 gpgparsemail
-rwxr-xr-x 1 root root        35200 Feb 21  2022 column
-rwsr-xr-x 1 root root        35200 Mar 23  2022 fusermount3
-rwxr-xr-x 1 root root        35192 Nov 21 21:57 systemd-tty-ask-password-agent
-rwxr-xr-x 1 root root        35192 Feb 21  2022 setterm
-rwxr-xr-x 1 root root        35192 Feb 21  2022 scriptreplay
-rwxr-xr-x 1 root root        35192 Feb 21  2022 last
-rwsr-xr-x 1 root root        35192 Feb 21  2022 umount
-rwxr-xr-x 1 root root        35128 Jan  8 15:56 echo
-rwxr-xr-x 1 root root        35112 Jan  2 14:22 getconf
-rwxr-xr-x 1 root root        35064 Oct 31 12:36 pmap
-rwxr-xr-x 1 root root        35048 May 29  2023 snapfuse
-rwxr-xr-x 1 root root        32096 Mar 24  2022 killall
-rwxr-xr-x 1 root root        31982 Jan 16  2021 munchlist
-rwxr-xr-x 1 root root        31560 Feb 21  2022 whereis
-rwxr-xr-x 1 root root        31520 Mar 17  2022 manpath
-rwxr-xr-x 1 root root        31432 Feb 21  2022 lslocks
-rwxr-xr-x 1 root root        31344 Jan 23 16:08 x86_64-linux-gnu-strings
-rwxr-xr-x 1 root root        31336 Nov  9  2022 spa-resample
-rwxr-xr-x 1 root root        31328 Feb 21  2022 unshare
-rwxr-xr-x 1 root root        31248 Jun  5  2023 aa-features-abi
-rwxr-xr-x 1 root root        31240 Jan  8 15:56 whoami
-rwxr-xr-x 1 root root        31240 Jan  8 15:56 unlink
-rwxr-xr-x 1 root root        31240 Jan  8 15:56 tty
-rwxr-xr-x 1 root root        31240 Jan  8 15:56 logname
-rwxr-xr-x 1 root root        31240 Jan  8 15:56 link
-rwxr-xr-x 1 root root        31240 Jan  8 15:56 hostid
-rwxr-xr-x 1 root root        31240 Jan  8 15:56 arch
-rwxr-xr-x 1 root root        31208 Mar 23  2022 soelim
-rwxr-xr-x 1 root root        31184 Jan 23 16:08 x86_64-linux-gnu-size
-rwxr-xr-x 1 root root        31120 Feb 21  2022 wdctl
-rwxr-xr-x 1 root root        31112 Nov  1  2022 ntfsmove
-rwxr-xr-x 1 root root        31112 Mar 25  2022 usbhid-dump
-rwxr-xr-x 1 root root        31112 Jan  8 15:56 yes
-rwxr-xr-x 1 root root        31112 Jan  8 15:56 printenv
-rwxr-xr-x 1 root root        31112 Jan  8 15:56 dirname
-rwxr-xr-x 1 root root        31112 Aug 30  2021 setpci
-rwxr-xr-x 1 root root        31104 Nov 21 21:57 hostnamectl
-rwxr-xr-x 1 root root        31104 Nov  9  2022 pw-top
-rwxr-xr-x 1 root root        31104 Nov  9  2022 pw-link
-rwxr-xr-x 1 root root        31104 Nov  1  2022 ntfscmp
-rwxr-xr-x 1 root root        31104 Mar 24  2022 nstat
-rwxr-xr-x 1 root root        31048 Dec 16  2022 mapscrn
-rwxr-xr-x 1 root root        31048 Dec 16  2022 loadunimap
-rwxr-xr-x 1 root root        31032 Jun  8  2023 gsettings
-rwxr-xr-x 1 root root        30968 Oct 31 12:36 pidwait
-rwxr-xr-x 1 root root        30968 Oct 31 12:36 pgrep
-rwxr-xr-x 1 root root        30952 Oct 31 12:36 skill
-rwxr-xr-x 1 root root        30952 Oct 31 12:36 kill
-rwxr-xr-x 1 root root        30888 Mar 17  2022 whiptail
-rwsr-xr-x 1 root root        30872 Feb 26  2022 pkexec
-rwxr-xr-x 1 root root        30864 Oct 25  2022 dbus-launch
-rwxr-xr-x 1 root root        29227 Nov 23 15:56 h2ph
-rwxr-xr-x 1 root root        28288 Feb  6 13:54 lastlog
-rwxr-xr-x 1 root root        28173 Oct  6 10:53 apt-key
-rwxr-xr-x 1 root root        28112 Nov  1  2022 ntfsls
-rwxr-xr-x 1 root root        27528 Feb 21  2022 prlimit
-rwxr-xr-x 1 root root        27344 Jan 23 16:08 x86_64-linux-gnu-addr2line
-rwxr-xr-x 1 root root        27280 Feb 21  2022 setarch
-rwxr-xr-x 1 root root        27240 Oct 31 12:36 watch
-rwxr-xr-x 1 root root        27232 Feb 21  2022 nsenter
-rwxr-xr-x 1 root root        27200 Sep 11  2023 file
-rwxr-xr-x 1 root root        27184 Jul  4  2022 gpgsplit
-rwxr-xr-x 1 root root        27176 Mar 23  2022 run-parts
-rwxr-xr-x 1 root root        27160 Mar 25  2022 time
-rwxr-xr-x 1 root root        27104 Oct  6 10:53 apt-cdrom
-rwxr-xr-x 1 root root        27072 Feb 21  2022 mcookie
-rwxr-xr-x 1 root root        27024 Oct  6 10:53 apt-config
-rwxr-xr-x 1 root root        27016 Nov  1  2022 ntfsfallocate
-rwxr-xr-x 1 root root        27008 Nov  9  2022 pw-reserve
-rwxr-xr-x 1 root root        27008 Nov  9  2022 pw-profiler
-rwxr-xr-x 1 root root        27008 Nov  1  2022 ntfscat
-rwxr-xr-x 1 root root        27000 Nov 21 21:57 systemd-socket-activate
-rwxr-xr-x 1 root root        27000 Nov 21 21:57 systemd-id128
-rwxr-xr-x 1 root root        27000 Nov 21 21:57 systemd-delta
-rwxr-xr-x 1 root root        27000 Nov 21 21:57 localectl
-rwxr-xr-x 1 root root        27000 Feb 21  2022 uclampset
-rwxr-xr-x 1 root root        27000 Feb 21  2022 chrt
-rwxr-xr-x 1 root root        26968 May 16  2023 tput
-rwxr-xr-x 1 root root        26952 Dec 16  2022 resizecons
-rwxr-xr-x 1 root root        26944 May 16  2023 tset
-rwxr-xr-x 1 root root        26936 Nov  1  2022 ntfstruncate
-rwxr-xr-x 1 root root        26936 Jan  8 15:56 true
-rwxr-xr-x 1 root root        26936 Jan  8 15:56 false
-rwxr-xr-x 1 root root        26920 Oct 25  2022 dbus-send
-rwxr-xr-x 1 root root        26920 Oct 25  2022 dbus-monitor
-rwxr-xr-x 1 root root        26920 Feb  7  2022 enchant-2
-rwxr-xr-x 1 root root        26864 Oct 31 12:36 free
-rwxr-xr-x 1 root root        26856 Mar 25  2022 xdg-user-dirs-update
-rwxr-xr-x 1 root root        26856 Dec 16  2022 psfxtable
-rwxr-xr-x 1 root root        26840 Jan  2 14:22 zdump
-rwxr-xr-x 1 root root        26632 Aug 20  2018 wmdocker
-rwxr-xr-x 1 root root        24272 Feb 20 14:07 lesskey
-rwxr-xr-x 1 root root        24235 Jun  7  2023 pygettext3.10
-rwxr-xr-x 1 root root        23504 Nov 28 13:18 debian-distro-info
-rwxr-xr-x 1 root root        23440 Nov 28 13:18 ubuntu-distro-info
-rwxr-xr-x 1 root root        23200 Mar 24  2022 lnstat
-rwxr-xr-x 1 root root        23136 Feb  6 13:54 faillog
-rwxr-sr-x 1 root shadow      23136 Feb  6 13:54 expiry
-rwxr-xr-x 1 root root        23128 Dec 16  2022 openvt
-rwxr-xr-x 1 root root        23016 Nov 21 21:57 systemd-cgls
-rwxr-xr-x 1 root root        23016 Feb 21  2022 flock
-rwxr-xr-x 1 root root        23008 Oct  6 10:53 apt-extracttemplates
-rwxr-xr-x 1 root root        22976 Feb 21  2022 ipcmk
-rwxr-xr-x 1 root root        22952 Feb 21  2022 fincore
-rwxr-xr-x 1 root root        22928 Nov 21 21:57 systemd-inhibit
-rwxr-xr-x 1 root root        22920 Jun  8  2023 gapplication
-rwxr-xr-x 1 root root        22912 Nov 21 21:57 systemd-stdio-bridge
-rwxr-xr-x 1 root root        22912 Nov 21 21:57 systemd-notify
-rwxr-xr-x 1 root root        22912 Mar 24  2022 prtstat
-rwxr-xr-x 1 root root        22912 Feb 21  2022 ul
-rwxr-xr-x 1 root root        22912 Feb 21  2022 col
-rwxr-sr-x 1 root tty         22912 Feb 21  2022 write.ul
-rwxr-xr-x 1 root root        22904 Nov 21 21:57 systemd-escape
-rwxr-xr-x 1 root root        22904 Jan  2 14:22 pldd
-rwxr-xr-x 1 root root        22904 Feb 21  2022 uuidparse
-rwxr-xr-x 1 root root        22904 Feb 21  2022 utmpdump
-rwxr-xr-x 1 root root        22904 Feb 21  2022 taskset
-rwxr-xr-x 1 root root        22904 Feb 21  2022 resizepart
-rwxr-xr-x 1 root root        22904 Feb 21  2022 namei
-rwxr-xr-x 1 root root        22904 Feb 21  2022 getopt
-rwxr-xr-x 1 root root        22904 Feb 21  2022 fallocate
-rwxr-xr-x 1 root root        22904 Feb 21  2022 choom
-rwxr-sr-x 1 root tty         22904 Feb 21  2022 wall
-rwxr-xr-x 1 root root        22840 May 16  2023 toe
-rwxr-xr-x 1 root root        22840 Mar 14  2022 pkmon
-rwxr-xr-x 1 root root        22840 Jun  8  2023 gresource
-rwxr-xr-x 1 root root        22832 Feb 26  2022 pkcheck
-rwxr-xr-x 1 root root        22832 Feb  1 16:52 funzip
-rwxr-xr-x 1 root root        22800 Jan 23 16:08 x86_64-linux-gnu-c++filt
-rwxr-xr-x 1 root root        22783 Jan 26 15:10 ubuntu-security-status
-rwxr-xr-x 1 root root        22768 Oct 31 12:36 slabtop
-rwxr-xr-x 1 root root        22760 Oct 31 12:36 w
-rwxr-xr-x 1 root root        22760 Mar 23  2022 hostname
-rwxr-xr-x 1 root root        22760 Mar 23  2022 fc-cache
-rwxr-xr-x 1 root root        22680 Mar 17  2022 session-migration
-rwxr-xr-x 1 root root        22672 Feb  5  2022 tracepath
-rwxr-xr-x 1 root root        21394 Dec  7  2021 deb-systemd-helper
-rwxr-xr-x 1 root root        21209 Feb 23 15:53 dpkg-maintscript-helper
-rwxr-xr-x 1 root root        20185 May  4  2022 networkd-dispatcher
-rwxr-xr-x 1 root root        19414 Nov 23 15:56 splain
-rwxr-xr-x 1 root root        19367 Jun 16  2020 ucfq
-rwxr-xr-x 1 root root        18928 Nov 21 21:57 systemd-machine-id-setup
-rwxr-xr-x 1 root root        18928 Nov 21 21:57 systemd-ask-password
-rwxr-xr-x 1 root root        18904 May  9  2022 gtk-launch
-rwxr-xr-x 1 root root        18856 May  9  2022 gtk-encode-symbolic-svg
-rwxr-xr-x 1 root root        18832 Oct 21  2022 gdk-pixbuf-thumbnailer
-rwxr-xr-x 1 root root        18824 Oct  6 10:53 apt
-rwxr-xr-x 1 root root        18816 Nov 21 21:57 systemd-cat
-rwxr-xr-x 1 root root        18816 Nov  9  2022 pw-loopback
-rwxr-xr-x 1 root root        18808 Nov 21 21:57 systemd-path
-rwxr-xr-x 1 root root        18808 Nov 21 21:57 systemd-detect-virt
-rwxr-xr-x 1 root root        18808 Feb 21  2022 mountpoint
-rwxr-xr-x 1 root root        18808 Feb 21  2022 ipcrm
-rwxr-xr-x 1 root root        18808 Feb 21  2022 ionice
-rwxr-xr-x 1 root root        18776 Jan 16  2021 ijoin
-rwxr-xr-x 1 root root        18744 May 16  2023 tabs
-rwxr-xr-x 1 root root        18744 Jul  4  2022 watchgnupg
-rwxr-xr-x 1 root root        18736 Nov  1  2022 ntfsusermap
-rwxr-xr-x 1 root root        18736 Feb 26  2022 pkttyagent
-rwxr-xr-x 1 root root        18736 Feb 26  2022 pkaction
-rwxr-xr-x 1 root root        18728 Feb  7  2022 enchant-lsmod-2
-rwxr-xr-x 1 root root        18720 Mar 14 10:05 xxd
-rwxr-xr-x 1 root root        18680 Oct 31 12:36 tload
-rwxr-xr-x 1 root root        18664 Mar 23  2022 fc-cat
-rwxr-xr-x 1 root root        18664 Dec 16  2022 showkey
-rwxr-xr-x 1 root root        18664 Dec 16  2022 showconsolefont
-rwxr-xr-x 1 root root        18664 Dec 16  2022 kbdinfo
-rwxr-xr-x 1 root root        18648 Dec 16  2022 setleds
-rwxr-xr-x 1 root root        16502 Nov 24  2021 pastebinit
-rwxr-xr-x 1 root root        16163 Dec 16  2022 mk_modmap
-rwxr-xr-x 1 root root        15778 Nov 23 15:56 libnetcfg
-rwxr-xr-x 1 root root        15378 Jan  2 14:22 tzselect
-rwxr-xr-x 1 root root        15375 Nov 23 15:56 corelist
-rwxr-xr-x 1 root root        15034 Nov 23 15:56 pod2man
-rwxr-xr-x 1 root root        14872 Dec 16  2022 kbd_mode
-rwxr-xr-x 1 root root        14836 Mar  6 17:32 dockerd-rootless-setuptool.sh
-rwxr-xr-x 1 root root        14824 Nov  9  2022 spa-monitor
-rwxr-xr-x 1 root root        14720 Nov  9  2022 pw-metadata
-rwxr-xr-x 1 root root        14720 Nov  9  2022 pipewire
-rwxr-xr-x 1 root root        14720 Nov  1  2022 ntfs-3g.probe
-rwxr-xr-x 1 root root        14720 Feb 21  2022 look
-rwxr-xr-x 1 root root        14720 Feb 21  2022 colrm
-rwxr-xr-x 1 root root        14720 Feb 21  2022 colcrt
-rwxr-xr-x 1 root root        14712 Feb 21  2022 uuidgen
-rwxr-xr-x 1 root root        14712 Feb 21  2022 setsid
-rwxr-xr-x 1 root root        14712 Feb 21  2022 rev
-rwxr-xr-x 1 root root        14712 Feb 21  2022 renice
-rwxr-xr-x 1 root root        14712 Feb 21  2022 mesg
-rwxr-xr-x 1 root root        14712 Feb 21  2022 delpart
-rwxr-xr-x 1 root root        14712 Feb 21  2022 addpart
-rwxr-xr-x 1 root root        14672 Oct 21  2022 gdk-pixbuf-csource
-rwxr-xr-x 1 root root        14656 Oct 21  2022 gdk-pixbuf-pixdata
-rwxr-xr-x 1 root root        14656 May 16  2023 clear
-rwxr-xr-x 1 root root        14656 Jun  2  2022 lsattr
-rwxr-xr-x 1 root root        14656 Jun  2  2022 chattr
-rwxr-xr-x 1 root root        14656 Feb 20 14:07 lessecho
-rwxr-xr-x 1 root root        14648 Nov 23 15:56 perl5.34-x86_64-linux-gnu
-rwxr-xr-x 1 root root        14648 Nov  9  2022 spa-json-dump
-rwxr-xr-x 1 root root        14648 May  9  2022 gtk-query-settings
-rwxr-xr-x 1 root root        14640 Mar 25  2022 usbreset
-rwxr-xr-x 1 root root        14640 Mar 24  2022 pslog
-rwxr-xr-x 1 root root        14640 Mar 24  2022 peekfd
-rwxr-xr-x 1 root root        14640 Mar 23  2022 word-list-compress
-rwxr-xr-x 1 root root        14640 Mar 23  2022 prezip-bin
-rwxr-xr-x 1 root root        14640 Mar  2  2022 gedit
-rwxr-xr-x 1 root root        14640 Jan 16  2021 defmt-sh
-rwxr-xr-x 1 root root        14640 Jan 16  2021 defmt-c
-rwxr-xr-x 1 root root        14632 Oct 25  2022 dbus-uuidgen
-rwxr-xr-x 1 root root        14632 Oct 25  2022 dbus-update-activation-environment
-rwxr-xr-x 1 root root        14632 Oct 25  2022 dbus-run-session
-rwxr-xr-x 1 root root        14632 Oct 25  2022 dbus-cleanup-sockets
-rwxr-xr-x 1 root root        14600 Dec 16  2022 setmetamode
-rwxr-xr-x 1 root root        14568 Oct 31 12:36 uptime
-rwxr-xr-x 1 root root        14568 Oct 31 12:36 pwdx
-rwxr-xr-x 1 root root        14568 Mar 23  2022 fc-validate
-rwxr-xr-x 1 root root        14568 Mar 23  2022 fc-scan
-rwxr-xr-x 1 root root        14568 Mar 23  2022 fc-query
-rwxr-xr-x 1 root root        14568 Mar 23  2022 fc-pattern
-rwxr-xr-x 1 root root        14568 Mar 23  2022 fc-match
-rwxr-xr-x 1 root root        14568 Mar 23  2022 fc-list
-rwxr-xr-x 1 root root        14568 Mar 23  2022 fc-conflist
-rwxr-xr-x 1 root root        14568 Mar 14 12:31 clear_console
-rwxr-xr-x 1 root root        14568 Dec 16  2022 setlogcons
-rwxr-xr-x 1 root root        14568 Dec 16  2022 setkeycodes
-rwxr-xr-x 1 root root        14568 Dec 16  2022 getkeycodes
-rwxr-xr-x 1 root root        14568 Dec 16  2022 fgconsole
-rwxr-xr-x 1 root root        14568 Dec 16  2022 deallocvt
-rwxr-xr-x 1 root root        14568 Dec 16  2022 chvt
-rwxr-xr-x 1 root root        14568 Apr  8  2022 lzmainfo
-rwxr-xr-x 1 root root        14536 Mar 23  2022 ischroot
-rwxr-xr-x 1 root root        14488 Feb 14 15:47 locale-check
-rwxr-xr-x 1 root root        14488 Dec 16  2022 splitfont
-rwxr-xr-x 1 root root        14488 Dec 16  2022 screendump
-rwxr-xr-x 1 root root        14488 Dec 16  2022 codepage
-rwxr-xr-x 1 root root        14478 Oct 24 15:07 add-apt-repository
-rwxr-xr-x 1 root root        14360 Mar 23  2022 tempfile
-rwxr-xr-x 1 root root        13658 Nov 23 15:56 prove
-rwxr-xr-x 1 root root        13360 Apr 14  2023 apport-cli
-rwxr-xr-x 1 root root        13191 Aug 18  2022 py3compile
-rwxr-xr-x 1 root root        12676 Feb 23  2022 ssh-copy-id
-rwxr-xr-x 1 root root        12639 Feb 27  2023 rrsync
-rwxr-xr-x 1 root root        12019 Jan 16  2021 findaffix
-rwxr-xr-x 1 root root        11996 Feb 17  2020 byobu-ulevel
-rwxr-xr-x 1 root root        11541 Feb 20  2022 debconf-apt-progress
-rwxr-xr-x 1 root root        10867 Nov 23 15:56 perlivp
-rwxr-xr-x 1 root root        10830 Jan 26 15:10 hwe-support-status
-rwxr-xr-x 1 root root        10803 Nov 23 15:56 pod2text
-rwxr-xr-x 1 root root        10719 Jun 16  2020 ucfr
-rwxr-xr-x 1 root root        10675 Feb 13 14:47 do-release-upgrade
-rwxr-xr-x 1 root root        10487 Mar 23  2022 savelog
-rwxr-xr-x 1 root root         9979 Nov 23 15:56 shasum
-rwxr-xr-x 1 root root         9444 Feb 27  2019 dh_installxmlcatalogs
-rwxr-xr-x 1 root root         9228 May  1  2022 gdialog
-rwxr-xr-x 1 root root         9047 Dec 28  2021 lesspipe
-rwxr-xr-x 1 root root         8792 Apr 14  2023 oem-getlogs
-rwxr-xr-x 1 root root         8381 Nov 23 15:56 cpan5.34-x86_64-linux-gnu
-rwxr-xr-x 1 root root         8363 Feb 17  2020 byobu
-rwxr-xr-x 1 root root         8360 Nov 23 15:56 piconv
-rwxr-xr-x 1 root root         8360 Nov 23 15:56 cpan
-rwxr-xr-x 1 root root         8103 Sep  5  2022 zgrep
-rwxr-xr-x 1 root root         7941 Nov 23 15:56 streamzip
-rwxr-xr-x 1 root root         7813 Aug 18  2022 py3clean
-rwxr-xr-x 1 root root         7784 Jun 16  2020 lcf
-rwxr-xr-x 1 root root         7222 Dec  2  2021 ispell-wrapper
-rwxr-xr-x 1 root root         7023 Apr  8  2022 xzdiff
-rwxr-xr-x 1 root root         6963 Feb 16 09:51 c_rehash
-rwxr-xr-x 1 root root         6870 Mar  6 17:32 dockerd-rootless.sh
-rwxr-xr-x 1 root root         6818 Mar 14 12:31 bashbug
-rwxr-xr-x 1 root root         6447 Sep  5  2022 gzexe
-rwxr-xr-x 1 root root         6440 Feb 17  2020 byobu-janitor
-rwxr-xr-x 1 root root         6156 Feb 15  2022 deb-systemd-invoke
-rwxr-xr-x 1 root root         6015 Feb 17  2020 byobu-status
-rwxr-xr-x 1 root root         6015 Apr  8  2022 xzgrep
-rwxr-xr-x 1 root root         5898 Sep  5  2022 zdiff
-rwxr-xr-x 1 root root         5656 Mar 23  2022 prezip
-rwxr-xr-x 1 root root         5656 Mar 23  2022 preunzip
-rwxr-xr-x 1 root root         5656 Mar 23  2022 precat
-rwxr-xr-x 1 root root         5443 Jan  2 14:22 ldd
-rwxr-xr-x 1 root root         5188 Mar 25  2022 gettext.sh
-rwxr-xr-x 1 root root         5167 Nov 23 15:56 xsubpp
-rwxr-xr-x 1 root root         5136 Feb 27  2023 rsync-ssl
-rwxr-xr-x 1 root root         5123 Feb 17  2020 byobu-select-profile
-rwxr-xr-x 1 root root         4992 Nov 23 15:56 json_pp
-rwxr-xr-x 1 root root         4919 Jan 16  2021 tryaffix
-rwxr-xr-x 1 root root         4902 Mar 11  2022 kernel-install
-rwxr-xr-x 1 root root         4774 Feb 17  2020 byobu-ctrl-a
-rwxr-xr-x 1 root root         4667 Feb 17  2020 byobu-ugraph
-rwxr-xr-x 1 root root         4577 Sep  5  2022 znew
-rwxr-xr-x 1 root root         4536 Nov 23 15:56 pl2pm
-rwxr-xr-x 1 root root         4429 Mar 25  2022 usb-devices
-rwxr-xr-x 1 root root         4414 Nov 11  2021 dh_bash-completion
-rwxr-xr-x 1 root root         4395 Nov 23 15:56 ptargrep
-rwxr-xr-x 1 root root         4373 Nov 23 15:56 instmodsh
-rwxr-xr-x 1 root root         4189 Feb 23 15:53 dpkg-realpath
-rwxr-xr-x 1 root root         4137 Nov 23 15:56 pod2html
-rwxr-xr-x 1 root root         4107 Nov 23 15:56 pod2usage
-rwxr-xr-x 1 root root         3658 Nov 23 15:56 podchecker
-rwxr-xr-x 1 root root         3638 Aug 25  2019 lsb_release
-rwxr-xr-x 1 root root         3592 Jan 15  2014 run-one
-rwxr-xr-x 1 root root         3566 Nov 23 15:56 ptar
-rwxr-xr-x 1 root root         3516 Jul  4  2022 gpg-zip
-rwxr-xr-x 1 root root         3348 Feb 17  2020 byobu-layout
-rwxr-xr-x 1 root root         3329 Feb 17  2020 byobu-launch
-rwxr-xr-x 1 root root         3298 Feb 17  2020 byobu-reconnect-sockets
-rwxr-xr-x 1 root root         3293 Mar 23  2022 nroff
-rwxr-xr-x 1 root root         3078 Nov 23 15:56 encguess
-rwxr-xr-x 1 root root         3060 Dec 18  2021 migrate-pubring-from-classic-gpg
-rwxr-xr-x 1 root root         2995 Feb 20  2022 debconf-set-selections
-rwxr-xr-x 1 root root         2959 Feb  1 16:52 zipgrep
-rwxr-xr-x 1 root root         2859 Feb 20  2022 debconf
-rwxr-xr-x 1 root root         2776 Mar 23  2022 grog
-rwxr-xr-x 1 root root         2762 Dec 16  2022 unicode_start
-rwxr-xr-x 1 root root         2645 Nov 23 15:56 ptardiff
-rwxr-xr-x 1 root root         2640 Feb 17  2020 vigpg
-rwxr-xr-x 1 root root         2569 Aug  3  2019 pbput
-rwxr-xr-x 1 root root         2568 Apr 14  2023 apport-bug
-rwxr-xr-x 1 root root         2514 Jan  3  2022 helpztags
-rwxr-xr-x 1 root root         2459 Feb 17  2020 byobu-launcher-install
-rwxr-xr-x 1 root root         2450 Aug 29  2021 select-editor
-rwxr-xr-x 2 root root         2346 Sep  5  2022 uncompress
-rwxr-xr-x 2 root root         2346 Sep  5  2022 gunzip
-rwxr-xr-x 1 root root         2206 Sep  5  2022 zless
-rwxr-xr-x 1 root root         2162 Apr  8  2022 xzmore
-rwxr-xr-x 1 root root         2154 Mar 14 10:05 vimtutor
-rwxr-xr-x 1 root root         2107 Feb 17  2020 wifi-status
-rwxr-xr-x 1 root root         2081 Sep  5  2022 zforce
-rwxr-xr-x 1 root root         2070 Apr 14  2023 apport-unpack
-rwxr-xr-x 1 root root         2044 Mar 23  2022 aspell-import
-rwxr-xr-x 1 root root         1992 Nov  9  2022 pw-v4l2
-rwxr-xr-x 1 root root         1984 Sep  5  2022 zcat
-rwxr-xr-x 1 root root         1942 Feb 17  2020 manifest
-rwxr-xr-x 1 root root         1910 Feb 17  2020 byobu-launcher
-rwxr-xr-x 1 root root         1842 Sep  5  2022 zmore
-rwxr-xr-x 1 root root         1827 Feb 20  2022 debconf-show
-rwxr-xr-x 1 root root         1821 Feb 16  2021 strace-log-merge
-rwxr-xr-x 1 root root         1799 Apr  8  2022 xzless
-rwxr-xr-x 1 root root         1719 Feb 20  2022 debconf-copydb
-rwxr-xr-x 1 root root         1678 Sep  5  2022 zcmp
-rwxr-xr-x 1 root root         1656 Mar 24  2022 routel
-rwxr-xr-x 1 root root         1600 Feb 17  2020 byobu-shell
-rwxr-xr-x 1 root root         1561 Feb 17  2020 byobu-launcher-uninstall
-rwxr-xr-x 1 root root         1506 Feb 17  2020 byobu-keybindings
-rwxr-xr-x 1 root root         1455 Jul  7  2021 ssh-argv0
-rwxr-xr-x 1 root root         1453 Feb 17  2020 byobu-enable-prompt
-rwxr-xr-x 1 root root         1452 Feb 17  2020 byobu-select-backend
-rwxr-xr-x 1 root root         1410 Feb 17  2020 byobu-quiet
-rwxr-xr-x 1 root root         1351 Feb 17  2020 byobu-export
-rwxr-xr-x 1 root root         1341 Feb 17  2020 byobu-disable-prompt
-rwxr-xr-x 1 root root         1306 Feb 17  2020 byobu-silent
-rwxr-xr-x 1 root root         1295 Feb 17  2020 byobu-disable
-rwxr-xr-x 1 root root         1290 Aug 29  2021 sensible-browser
-rwxr-xr-x 1 root root         1269 Aug 29  2021 sensible-editor
-rwxr-xr-x 1 root root         1207 Feb 17  2020 byobu-status-detail
-rwxr-xr-x 1 root root         1182 Feb 17  2020 byobu-enable
-rwxr-xr-x 1 root root         1156 Feb 17  2020 byobu-prompt
-rwxr-xr-x 1 root root         1149 Feb 17  2020 purge-old-kernels
-rwxr-xr-x 1 root root         1081 Aug 28  2017 lspgpot
-rwxr-xr-x 1 root root         1012 Feb 17  2020 byobu-select-session
-rwxr-xr-x 1 root root         1003 Feb 29 15:03 ubuntu-advantage
-rwxr-xr-x 1 root root          996 Feb 17  2020 byobu-config
-rwxr-xr-x 1 root root          963 Feb 17  2020 col1
-rwxr-xr-x 1 root root          961 Jan  2  2022 keyring
-rwxr-xr-x 1 root root          960 Feb 17  2020 ctail
-rwxr-xr-x 1 root root          946 Mar 23  2022 which.debianutils
-rwxr-xr-x 1 root root          913 Mar 23  2022 neqn
-rwxr-xr-x 1 root root          647 Feb 20  2022 debconf-escape
-rwxr-xr-x 1 root root          608 Feb 20  2022 debconf-communicate
-rwxr-xr-x 1 root root          565 Aug 29  2021 sensible-pager
-rwxr-xr-x 1 root root          530 Dec 16  2022 unicode_stop
-rwxr-xr-x 1 root root          474 Dec  2  2021 select-default-iwrap
-rwxr-xr-x 1 root root          234 Mar 25  2022 xdg-user-dir
-rwxr-xr-x 1 root root          208 Mar 24  2022 routef
-rwxr-xr-x 1 root root          125 Aug 25  2021 perldoc
-rwxr-xr-x 1 root root           89 Feb 13  2022 red
-rwxr-xr-x 1 root root           79 Nov 20 16:14 pydoc3.10
-rwxr-xr-x 1 root root           57 Mar 23  2022 run-with-aspell
lrwxrwxrwx 1 root root           56 Mar 15 11:53 docker-compose -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/docker-compose
lrwxrwxrwx 1 root root           56 Mar 15 11:53 com.docker.cli -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/com.docker.cli
lrwxrwxrwx 1 root root           54 Mar 15 11:53 docker-index -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/docker-index
lrwxrwxrwx 1 root root           53 Jun  8  2023 glib-compile-schemas -> ../lib/x86_64-linux-gnu/glib-2.0/glib-compile-schemas
lrwxrwxrwx 1 root root           50 Mar 15 11:53 hub-tool -> /mnt/wsl/docker-desktop/cli-tools/usr/bin/hub-tool
lrwxrwxrwx 1 root root           49 Jun  8  2023 gio-querymodules -> ../lib/x86_64-linux-gnu/glib-2.0/gio-querymodules
lrwxrwxrwx 1 root root           46 Mar 15 11:53 docker-credential-desktop.exe -> /Docker/host/bin/docker-credential-desktop.exe
lrwxrwxrwx 1 root root           35 Mar 15 11:28 gnome-text-editor -> /etc/alternatives/gnome-text-editor
lrwxrwxrwx 1 root root           31 Aug 18  2022 py3versions -> ../share/python3/py3versions.py
-rwxr-xr-x 1 root root           30 Jan 29  2020 rgrep
lrwxrwxrwx 1 root root           29 Nov 22 22:37 infobrowser -> /etc/alternatives/infobrowser
-rwxr-xr-x 1 root root           29 Sep  5  2022 zfgrep
-rwxr-xr-x 1 root root           29 Sep  5  2022 zegrep
lrwxrwxrwx 1 root root           28 Jan 16 22:14 iptables-xml -> ../sbin/xtables-legacy-multi
-rwxr-xr-x 1 root root           28 Mar 23  2022 fgrep
-rwxr-xr-x 1 root root           28 Mar 23  2022 egrep
lrwxrwxrwx 1 root root           26 Nov 22 22:37 pinentry -> /etc/alternatives/pinentry
lrwxrwxrwx 1 root root           26 Jan 23 16:08 addr2line -> x86_64-linux-gnu-addr2line
lrwxrwxrwx 1 root root           25 Nov 22 22:37 vimdiff -> /etc/alternatives/vimdiff
lrwxrwxrwx 1 root root           25 Nov 22 22:37 lzfgrep -> /etc/alternatives/lzfgrep
lrwxrwxrwx 1 root root           25 Nov 22 22:37 lzegrep -> /etc/alternatives/lzegrep
lrwxrwxrwx 1 root root           25 May 29  2023 ubuntu-core-launcher -> ../lib/snapd/snap-confine
lrwxrwxrwx 1 root root           24 Nov 22 22:37 unlzma -> /etc/alternatives/unlzma
lrwxrwxrwx 1 root root           24 Nov 22 22:37 telnet -> /etc/alternatives/telnet
lrwxrwxrwx 1 root root           24 Nov 22 22:37 rlogin -> /etc/alternatives/rlogin
lrwxrwxrwx 1 root root           24 Nov 22 22:37 lzmore -> /etc/alternatives/lzmore
lrwxrwxrwx 1 root root           24 Nov 22 22:37 lzless -> /etc/alternatives/lzless
lrwxrwxrwx 1 root root           24 Nov 22 22:37 lzgrep -> /etc/alternatives/lzgrep
lrwxrwxrwx 1 root root           24 Nov 22 22:37 lzdiff -> /etc/alternatives/lzdiff
lrwxrwxrwx 1 root root           24 Nov 22 22:36 netcat -> /etc/alternatives/netcat
lrwxrwxrwx 1 root root           24 Nov 22 22:36 editor -> /etc/alternatives/editor
lrwxrwxrwx 1 root root           24 Nov 20 16:14 pdb3.10 -> ../lib/python3.10/pdb.py
lrwxrwxrwx 1 root root           24 Jan 23 16:08 x86_64-linux-gnu-gold -> x86_64-linux-gnu-ld.gold
lrwxrwxrwx 1 root root           24 Jan 23 16:08 strings -> x86_64-linux-gnu-strings
lrwxrwxrwx 1 root root           24 Jan 23 16:08 readelf -> x86_64-linux-gnu-readelf
lrwxrwxrwx 1 root root           24 Jan 23 16:08 objdump -> x86_64-linux-gnu-objdump
lrwxrwxrwx 1 root root           24 Jan 23 16:08 objcopy -> x86_64-linux-gnu-objcopy
lrwxrwxrwx 1 root root           24 Jan 23 16:08 ld.gold -> x86_64-linux-gnu-ld.gold
lrwxrwxrwx 1 root root           24 Jan 23 16:08 elfedit -> x86_64-linux-gnu-elfedit
lrwxrwxrwx 1 root root           24 Jan 23 16:08 c++filt -> x86_64-linux-gnu-c++filt
lrwxrwxrwx 1 root root           23 Nov 22 22:37 write -> /etc/alternatives/write
lrwxrwxrwx 1 root root           23 Nov 22 22:37 lzcmp -> /etc/alternatives/lzcmp
lrwxrwxrwx 1 root root           23 Nov 22 22:37 lzcat -> /etc/alternatives/lzcat
lrwxrwxrwx 1 root root           23 Nov 22 22:36 which -> /etc/alternatives/which
lrwxrwxrwx 1 root root           23 Nov 22 22:36 rview -> /etc/alternatives/rview
lrwxrwxrwx 1 root root           23 Nov 22 22:36 pager -> /etc/alternatives/pager
lrwxrwxrwx 1 root root           23 Jan 23 16:08 x86_64-linux-gnu-ld -> x86_64-linux-gnu-ld.bfd
lrwxrwxrwx 1 root root           23 Jan 23 16:08 ranlib -> x86_64-linux-gnu-ranlib
lrwxrwxrwx 1 root root           23 Jan 23 16:08 ld.bfd -> x86_64-linux-gnu-ld.bfd
lrwxrwxrwx 1 root root           22 Nov 22 22:37 rvim -> /etc/alternatives/rvim
lrwxrwxrwx 1 root root           22 Nov 22 22:37 pico -> /etc/alternatives/pico
lrwxrwxrwx 1 root root           22 Nov 22 22:37 lzma -> /etc/alternatives/lzma
lrwxrwxrwx 1 root root           22 Nov 22 22:36 view -> /etc/alternatives/view
lrwxrwxrwx 1 root root           22 Nov 22 22:36 nawk -> /etc/alternatives/nawk
lrwxrwxrwx 1 root root           22 Jan 23 16:08 strip -> x86_64-linux-gnu-strip
lrwxrwxrwx 1 root root           22 Jan 23 16:08 gprof -> x86_64-linux-gnu-gprof
lrwxrwxrwx 1 root root           21 Nov 22 22:37 vim -> /etc/alternatives/vim
lrwxrwxrwx 1 root root           21 Nov 22 22:37 rsh -> /etc/alternatives/rsh
lrwxrwxrwx 1 root root           21 Nov 22 22:37 rcp -> /etc/alternatives/rcp
lrwxrwxrwx 1 root root           21 Nov 22 22:37 ftp -> /etc/alternatives/ftp
lrwxrwxrwx 1 root root           21 Nov 22 22:36 awk -> /etc/alternatives/awk
lrwxrwxrwx 1 root root           21 Jan 23 16:08 size -> x86_64-linux-gnu-size
lrwxrwxrwx 1 root root           21 Jan 23 16:08 gold -> x86_64-linux-gnu-gold
lrwxrwxrwx 1 root root           20 Nov 22 22:37 mt -> /etc/alternatives/mt
lrwxrwxrwx 1 root root           20 Nov 22 22:36 vi -> /etc/alternatives/vi
lrwxrwxrwx 1 root root           20 Nov 22 22:36 nc -> /etc/alternatives/nc
lrwxrwxrwx 1 root root           20 Nov 22 22:36 ex -> /etc/alternatives/ex
lrwxrwxrwx 1 root root           20 Nov 21 21:57 systemd -> /lib/systemd/systemd
lrwxrwxrwx 1 root root           20 May 29  2023 snapctl -> ../lib/snapd/snapctl
lrwxrwxrwx 1 root root           20 Jan 23 16:08 dwp -> x86_64-linux-gnu-dwp
lrwxrwxrwx 1 root root           19 Jan 23 16:08 nm -> x86_64-linux-gnu-nm
lrwxrwxrwx 1 root root           19 Jan 23 16:08 ld -> x86_64-linux-gnu-ld
lrwxrwxrwx 1 root root           19 Jan 23 16:08 as -> x86_64-linux-gnu-as
lrwxrwxrwx 1 root root           19 Jan 23 16:08 ar -> x86_64-linux-gnu-ar
lrwxrwxrwx 1 root root           18 Oct 24 15:07 apt-add-repository -> add-apt-repository
lrwxrwxrwx 1 root root           18 Nov 28 13:18 distro-info -> ubuntu-distro-info
lrwxrwxrwx 1 root root           18 Jan 14  2022 unattended-upgrades -> unattended-upgrade
lrwxrwxrwx 1 root root           17 Jul 20  2019 on_ac_power -> /sbin/on_ac_power
lrwxrwxrwx 1 root root           16 Feb 29 15:03 ua -> ubuntu-advantage
lrwxrwxrwx 1 root root           16 Feb 29 15:03 pro -> ubuntu-advantage
lrwxrwxrwx 1 root root           14 Dec 14  2021 pidof -> /sbin/killall5
lrwxrwxrwx 1 root root           13 Nov 21 21:57 systemd-umount -> systemd-mount
lrwxrwxrwx 1 root root           13 Aug 18  2022 pygettext3 -> pygettext3.10
lrwxrwxrwx 1 root root           12 Feb  6  2022 ginstall-info -> install-info
lrwxrwxrwx 1 root root           11 Mar 23  2022 fusermount -> fusermount3
lrwxrwxrwx 1 root root           10 Mar 25  2022 sqfstar -> mksquashfs
lrwxrwxrwx 1 root root           10 Mar 25  2022 sqfscat -> unsquashfs
lrwxrwxrwx 1 root root           10 Aug 18  2022 python3 -> python3.10
lrwxrwxrwx 1 root root           10 Apr 14  2023 ubuntu-bug -> apport-bug
lrwxrwxrwx 1 root root           10 Apr 14  2023 apport-collect -> apport-bug
lrwxrwxrwx 1 root root            9 Dec 16  2022 psfstriptable -> psfxtable
lrwxrwxrwx 1 root root            9 Dec 16  2022 psfgettable -> psfxtable
lrwxrwxrwx 1 root root            9 Dec 16  2022 psfaddtable -> psfxtable
lrwxrwxrwx 1 root root            9 Aug 18  2022 pydoc3 -> pydoc3.10
lrwxrwxrwx 1 root root            8 Mar 23  2022 ypdomainname -> hostname
lrwxrwxrwx 1 root root            8 Mar 23  2022 nisdomainname -> hostname
lrwxrwxrwx 1 root root            8 Mar 23  2022 domainname -> hostname
lrwxrwxrwx 1 root root            8 Mar 23  2022 dnsdomainname -> hostname
lrwxrwxrwx 1 root root            8 Feb 20 14:07 lessfile -> lesspipe
lrwxrwxrwx 1 root root            7 Jan 15  2014 run-this-one -> run-one
lrwxrwxrwx 1 root root            7 Jan 15  2014 run-one-until-success -> run-one
lrwxrwxrwx 1 root root            7 Jan 15  2014 run-one-until-failure -> run-one
lrwxrwxrwx 1 root root            7 Jan 15  2014 run-one-constantly -> run-one
lrwxrwxrwx 1 root root            7 Jan 15  2014 keep-one-running -> run-one
lrwxrwxrwx 1 root root            7 Feb 21  2022 x86_64 -> setarch
lrwxrwxrwx 1 root root            7 Feb 21  2022 linux64 -> setarch
lrwxrwxrwx 1 root root            7 Feb 21  2022 linux32 -> setarch
lrwxrwxrwx 1 root root            7 Feb 21  2022 i386 -> setarch
lrwxrwxrwx 1 root root            7 Feb 21  2022 hd -> hexdump
lrwxrwxrwx 1 root root            7 Feb  4  2022 static-sh -> busybox
lrwxrwxrwx 1 root root            7 Aug 18  2022 pdb3 -> pdb3.10
lrwxrwxrwx 1 root root            6 Nov  9  2022 pw-record -> pw-cat
lrwxrwxrwx 1 root root            6 Nov  9  2022 pw-play -> pw-cat
lrwxrwxrwx 1 root root            6 Nov  9  2022 pw-midirecord -> pw-cat
lrwxrwxrwx 1 root root            6 Nov  9  2022 pw-midiplay -> pw-cat
lrwxrwxrwx 1 root root            6 Nov  9  2022 pw-dsdplay -> pw-cat
lrwxrwxrwx 1 root root            6 Mar 24  2022 rtstat -> lnstat
lrwxrwxrwx 1 root root            6 Mar 24  2022 pstree.x11 -> pstree
lrwxrwxrwx 1 root root            6 Mar 24  2022 ctstat -> lnstat
lrwxrwxrwx 1 root root            6 Mar 17  2022 apropos -> whatis
lrwxrwxrwx 1 root root            6 Jan  8 15:56 md5sum.textutils -> md5sum
lrwxrwxrwx 1 root root            6 Feb  6 13:54 sg -> newgrp
lrwxrwxrwx 1 root root            6 Apr  8  2022 xzfgrep -> xzgrep
lrwxrwxrwx 1 root root            6 Apr  8  2022 xzegrep -> xzgrep
lrwxrwxrwx 1 root root            6 Apr  8  2022 xzcmp -> xzdiff
lrwxrwxrwx 1 root root            5 Oct 31 12:36 snice -> skill
lrwxrwxrwx 1 root root            5 Oct 31 12:36 pkill -> pgrep
lrwxrwxrwx 1 root root            5 Nov 24  2021 pbputs -> pbput
lrwxrwxrwx 1 root root            5 Nov 24  2021 pbget -> pbput
lrwxrwxrwx 1 root root            5 Mar  8 11:20 wslpath -> /init
lrwxrwxrwx 1 root root            5 Mar  8 11:20 wslinfo -> /init
lrwxrwxrwx 1 root root            5 Feb 17  2020 byobu-tmux -> byobu
lrwxrwxrwx 1 root root            5 Feb 17  2020 byobu-screen -> byobu
lrwxrwxrwx 1 root root            4 Nov 22 22:36 sh -> dash
lrwxrwxrwx 1 root root            4 May 16  2023 reset -> tset
lrwxrwxrwx 1 root root            4 Mar 28  2022 gnome-help -> yelp
lrwxrwxrwx 1 root root            4 Mar 14 12:31 rbash -> bash
lrwxrwxrwx 1 root root            4 Feb 21  2022 lastb -> last
lrwxrwxrwx 1 root root            4 Feb 19  2022 rnano -> nano
lrwxrwxrwx 1 root root            4 Feb 17  2020 col9 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 col8 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 col7 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 col6 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 col5 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 col4 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 col3 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 col2 -> col1
lrwxrwxrwx 1 root root            4 Feb 17  2020 NF -> col1
lrwxrwxrwx 1 root root            4 Feb  5  2022 ping6 -> ping
lrwxrwxrwx 1 root root            4 Feb  5  2022 ping4 -> ping
lrwxrwxrwx 1 root root            4 Aug 17  2021 lsmod -> kmod
lrwxrwxrwx 1 root root            4 Apr  3  2023 sudoedit -> sudo
lrwxrwxrwx 1 root root            3 May 16  2023 infotocap -> tic
lrwxrwxrwx 1 root root            3 May 16  2023 captoinfo -> tic
lrwxrwxrwx 1 root root            3 Mar 23  2022 gtbl -> tbl
lrwxrwxrwx 1 root root            3 Mar 23  2022 gpic -> pic
lrwxrwxrwx 1 root root            3 Mar 23  2022 geqn -> eqn
lrwxrwxrwx 1 root root            3 Jul  7  2023 git-upload-pack -> git
lrwxrwxrwx 1 root root            3 Jul  7  2023 git-upload-archive -> git
lrwxrwxrwx 1 root root            3 Jul  7  2023 git-receive-pack -> git
lrwxrwxrwx 1 root root            3 Jan  2 17:54 slogin -> ssh
lrwxrwxrwx 1 root root            2 Apr  8  2022 xzcat -> xz
lrwxrwxrwx 1 root root            2 Apr  8  2022 unxz -> xz
lrwxrwxrwx 1 root root            1 Mar 25  2022 X11 -> .
total 374132
kra231@DESKTOP-IPCC9HB:/bin$ cd ~/tresor_shell/
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ python3 indice_suivant.py 12 -nr -k 5
78217
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/78217
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/78217$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/78217$ cat indice
```
## 12. Pour trouver l'indice 13
L'indication pour trouver l'indice 13 dit : *"En utilisant tout ce que vous avez appris pour l'instant et le fait que les
vrais indices sont différents des faux indices, trouver l'indice final !"*

D'abord, l'une des choses que j'ai remarquée lors de ma *"chasse au tresor"*, c'est que tous les faux indices ont en commun la phrase *"Fausse piste"*.\
Ainsi, vu que j'ai pu retrouver tous les indices sauf le dernier, il est donc évident que c'est le seul fichier parmi les indices qui ne contient pas la phrase *"Fausse piste"*. Donc, j'écris le code suivant `for dossier in indices/*/; do     if ! grep -q "Fausse piste" "$dossier/indice"; then         echo "$dossier";     fi done` depuis le répertoire `/tresor_shell`. Cela me permet de lister tous numéros des bons indices *(indices ne contenant pas de phrases "Fausse piste")*. En fin, je regarde parmi ces numéros et j'identifie facilement que **42812** est le seul numéro que j'ai pas encore utiliser jusque là. je fais donc `cd indices/42812` et je vérifie qu'il est effectivement le bon indice. C'est ainsi que j'obtient l'indice final!
```bash
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/78217$ cd ../..
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ man grep
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ for dossier in indices/*/; do     if ! grep -q "Fausse piste" "$dossier/indice"; then         echo "$dossier";     fi done
indices/08538/
indices/12345/
indices/13801/
indices/14971/
indices/42812/
indices/49137/
indices/58792/
indices/68416/
indices/74744/
indices/78217/
indices/80539/
indices/93323/
kra231@DESKTOP-IPCC9HB:~/tresor_shell$ cd indices/42812
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/42812$ ls
indice
kra231@DESKTOP-IPCC9HB:~/tresor_shell/indices/42812$ cat indice
### Indice 13 : Bravo ! ###

#### Vous avez trouvé tous les indices ####

     _________________________________________
    /                                         \
    |          🎉 Félicitations ! 🥳           |
    \                                         /
     -----------------------------------------
      \                           .       .
       \                         / `.   .' "
        \                .---.  <    > <    >  .---.
         \               |    \  \ - ~ ~ - /  /    |
             _____          ..-~             ~-..-~
            |     |   \~~~\.'                    `./~~~/
           ---------   \__/                        \__/
          .'  O    \     /               /       \  "
         (_____,    `._.'               |         }  \/~~~/
          `----.          /       }     |        /    \__/
                `-.      |       /      |       /      `. ,~~|
                    ~-.__|      /_ - ~ ^|      /- _      `..-'
                         |     /        |     /     ~-.     `-. _  _  _
                         |_____|        |_____|
```
## L'image ci-dessous est issue du fichier image qui m'a permis de trouver l'indice 8:

![Mon chat](chat.jpg)
