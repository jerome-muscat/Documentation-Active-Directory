# Documentation-Active-Directory

Vous trouverez dans ce repo, une documentation sur Active Directory et des scripts en powershell :

La documentation Active Directory comprend une veille technologique, une partie configuration et une partie sur les GPO nécessaire au fonctionnement des scripts.
Cette documentation a été rédigé par :
- Rédaction : [Sophie GRAFF-PAILLE](https://github.com/sophie-graff-paille), [Livio GONZALEZ LUNA](https://github.com/livio-gonzalez-luna), [Isabelle NOBILE](https://github.com/isabelle-nobile) et moi-même.
- Image : [Azdine ZAHI](https://github.com/azdine-zahi) et moi-même

#
Les scripts en powershell correspondent à :
- verif_co.ps1 : est un script qui permet de nous alerter et nous dire les utilisateurs qui se connectent dans la plage qu'on a indiqué, la plage est sur 24h au maximum.
- verif_modif.ps1 : est un script qui permet de nous alerter si un même fichier est modifié au moins 3 fois en moins de 24H (plage de minuit à 23h 59min 59s).
- verif_inactif.ps1 : est un script qui permet d'être alerter si un utilisateurs est inactif depuis 30j, 60j et 90j ou plus.
- utilisateur.ps1 : est un script qui permet de créer des utilisateurs dans l'OU Active Directory qu'on souhaite à partir d'un fichier csv, on définit le mot de passe dans la variable `UtilisateurMdp`. Ces comptes sont par défaut actif et il faut changer le mot de passe lors de la première connexion.

Tous les scripts ont été rédigés par moi-même, hormis le script utilisateur qui a été inspiré de celui fourni par le site IT-connect
