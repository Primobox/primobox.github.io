---
layout: post
title:  "Ma carrière de jeune développeur (1/2)"
author: dboue
categories: [ Retour d'expérience, Clean codeur ]
image: assets/images/retrospective-d-une-carriere-de-jeune-developpeur-1/developpeur-bureau.jpg
description: "Description détaillée de l'article"
hidden: false # à changer pour masquer l'article ou non
---

Cela fait maintenant 5 ans que j'ai terminé mes études et pourtant je n'ai eu de cesse de revoir ma définition de ce qu'est un développeur. 

Cet article est une rétrospective de ma carrière et de comment j'en suis arrivé à changer la vision de mon travail.

## Pourquoi devenir développeur ?
Je pense que j'ai eu de la chance dans mes études, j'ai eu de super profs qui ont su transmettre leur savoir à tous les niveaux. À l'époque j'étais encore indécis sur la branche de l'informatique que je souhaitais explorer. J'avais déjà créé des infrastructures réseaux à plusieurs reprises, c'était quelque chose de connu et de confortable pour moi, mais j'avais envie de nouveauté.

Dans le développement, il y avait un côté créatif qui me plaisait beaucoup, une exploration du métier intéressante, avec pour point de convergence la programmation orientée objets (POO). Une notion très abstraite au premier abord, mais qui démontre toute sa puissance quand on la maitrîse.

J'ai vraiment adoré ces notions d'objets vivants qui représentent quelque chose dans le monde réel. Comment en leur envoyant des commandes on les fait vivre, et comment ils nous rendent un service. J'avais alors hâte de voir comment j'allais pouvoir utiliser tout ça dans un vrai cas métier. C'est une notion qui m'était chère et je l'ai retrouvée que bien plus tard quand j'ai lu [Elegant Objects](https://www.elegantobjects.org/) de [Yegor Bugayenko](https://www.yegor256.com/).

## Comment je me suis professionnalisé

Mon premier travail (et mon dernier stage) a été un moment charnière dans ma vie de jeune développeur. C'est sûrement à ce moment-là que je me suis le plus construit professionnellement. Je m'en souviens comme une petite période bénie où de vrais développeurs m'ont appris comment développer et surtout comment me comporter.

Mon premier projet a démarré comme pour beaucoup de développeur en ESN par la réception d'un joli cahier des charges qui devait me permettre de me lancer en autonomie dans la réalisation de mon tout premier logiciel (ERP).
Je dois dire que ce moment de lecture a été confortable, car ça me rappelait les gros énoncés de projets/examens que j'avais eu lors de mes études. Une consigne claire et orientée solution qui ne laisse pas beaucoup de place à la créativité...

J'ai naturellement demandé de l'aide aux autres développeurs de l'entreprise qui m'ont expliqué patiemment pleins de choses. 
J'étais bien loin d'imaginer que j'allais jeter cette notion d'objets vivant que j'avais vu en cours au profit d'un objet qui n'est rien de plus qu'un tas de donnée que je faisais seulement transiter au sein de services....
Cela m'a fait un petit choc, j'ai eu l'impression de devoir apprendre plein de choses et de ne pas être prêt professionnellement. Je me sentais obligé de faire mes preuves, sans savoir comment procéder.

Une classe est la représentation d'une table en base de données, qu'on fait transiter au sein de services métiers qui s'appellent les uns les autres. Les explications que je recevais me semblaient alors logiques et pleines de bon sens. C'était aussi plus facile à faire et sans grosse complexité comparée à ce que j'avais appris en cours.
Facile au début oui, mais dès que le projet a grossi je perdais régulièrement le fil des méthodes qui étaient appelées et je devais recommencer de zéro pour m'y retrouver.

On m'a aussi donné un projet exemple sur lequel je pouvais m'appuyer pour comprendre comment je devais développer.
Autant vous dire que j'ai reproduit toutes les erreurs qu'il y avait déjà dans ce projet et que j'ai ajouté les miennes.
À l'époque j'étais bien incapable de remettre en question ce projet exemple et encore plus ma manière de développer. J'étais relativement seul sur le projet et j'ai eu peu d'aide externe sauf quand j'osais la demander. J'étais dans les temps donc personne ne me demandait des comptes et personne ne prenait le temps de vérifier que je ne faisais pas de "bêtises".

Voici le résultat de ce qui a été produit :
* Un logiciel orienté CRUD thinking / DATA et pas métier 
* Aucun test unitaire (à l'époque je ne me doutais pas à quel point ces derniers m'auraient fait gagner du temps et de la sérénité...)
* Des méthodes de plusieurs centaines de lignes gérant des "trucs"
* Des jours entiers pour debuguer des entités qui mutaient dans l'ORM sans que je sache pourquoi
* Des trigger Base De Données qui contenaient de la logique métier et qui avaient été développés sans que je le sache
* Et bien d'autres choses

Aujourd'hui je pense que je trouverais "effrayant" ce que j'ai développé. Même s'il y avait un projet exemple qui m'a fortement guidé dans mes erreurs je pense que j'en ai fait plusieurs qui sont entièrement ma faute :
* Ne pas demander de l'aide et penser qu'écrire des lignes de code qui marchaient suffisait à faire du dev de qualité
* Ne pas remettre en question l'existant. Parce que oui même avec plusieurs années d'expérience on continue de faire pleins d'erreurs
* Ne pas m'intéresser au métier, mais uniquement au cahier des charges si réconfortant sur le moment (il était vraiment bien écrit, je n'en ai jamais revu d'aussi bonne qualité)
* Faire des erreurs pour rester dans les "temps" qu'une autre personne avait déterminé à ma place... Qui n'a jamais entendu "J'ai vendu cette fonctionnalité 2 jours donc tu dois la faire en 2 jours" ?

Au final et malgré tout ce que j'ai dit, je garde un très bon souvenir de ce projet. Il s'est bien passé et le client a été super content ! 

Ce qui a suivi dans cette entreprise est une suite de projets sur les mêmes bases, qui m'ont appris à me comporter en tant que professionnel :
* Justifier mes choix quand on me le demande
* M'engager à fond dans les développements
* Dire "non" quand les demandes sont déraisonnables
* Gérer mon temps et les priorités
* Ne pas céder à la pression
* Travailler en équipe

Sans le savoir j'appliquais beaucoup de conseils tirés du livre [Clean Coder](https://www.oreilly.com/library/view/the-clean-coder/9780132542913/) de [Bob Martin](http://cleancoder.com/products). Ces progrès je les dois essentiellement à mon manager de l'époque qui m'a accordé très facilement sa confiance. Avec le recul, je pense que j'ai eu beaucoup de chance de l'avoir.

## PRIMOBOX : L'entreprise qui m'a fait grandir

Primobox a été une révélation pour moi, j'y ai perpétué ce que j'avais appris, désappris d'autres choses, évolué et surtout j'y suis devenu ce que je suis un aujourd'hui. Un développeur passionné qui sait qu'il lui reste encore bien des choses à apprendre. Cela je vous en parlerais dans un prochain article

# Conclusion
L'école m'a appris les bases du développement, mais c'est en entreprise que j'ai compris ce que voulait dire être un développeur. L'école ne nous prépare pas aux enjeux du monde du travail, à comprendre les interactions humaines et à gérer les pressions externe. Tout cela s'acquiert avec l'expérience professionnelle. Il faut s'entourer des personnes nous permettant de grandir techniquement et surtout humainement.