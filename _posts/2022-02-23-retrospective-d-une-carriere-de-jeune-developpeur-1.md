---
layout: post
title:  "Ma carrière de jeune développeur (1/2)"
author: dboue
categories: [ Retour d'expérience, Clean codeur ]
image_on_home: assets/images/retrospective-d-une-carriere-de-jeune-developpeur-1/developpeur-bureau.jpg
description: "Cela fait maintenant 5 ans que j'ai terminé mes études et pourtant je n'ai eu de cesse de revoir ma vision de ce qu'est un développeur. Voici une rétrospective du premier changement de cette vision."
hidden: false # à changer pour masquer l'article ou non
---

Cela fait maintenant 5 ans que j'ai terminé mes études et pourtant je n'ai eu de cesse de revoir ma vision de ce qu'est un développeur. Voici une rétrospective du premier changement de cette vision.

## Pourquoi devenir développeur ?
Je pense que j'ai eu de la chance dans mes études, j'ai eu des professeurs qui ont su me transmettre leur savoir et me guider afin de que je puisse trouver ce qui me plaît. En effet j'étais très indécis sur ce que je voulais faire à l'époque. 

 J'avais déjà créé des infrastructures réseaux à plusieurs reprises, c'était quelque chose de connu et de confortable pour moi, mais j'avais envie de nouveauté.

Dans le développement, il y avait un côté créatif qui me plaisait beaucoup, une exploration du métier intéressante, avec pour point de convergence la programmation orientée objet (POO). Une notion très abstraite au premier abord, mais qui démontre toute sa puissance quand on la maîtrise.

J'ai vraiment adoré ces notions d'objets vivants qui représentent quelque chose dans le monde réel. Comment en leur envoyant des commandes on les fait vivre, et comment ils nous rendent un service. J'avais alors hâte de voir comment j'allais pouvoir utiliser tout ça dans un vrai cas métier. C'est une notion qui m'était chère et je ne l'ai retrouvée que bien plus tard quand j'ai lu [Elegant Objects](https://www.elegantobjects.org/){:target="_blank"} de [Yegor Bugayenko](https://www.yegor256.com/){:target="_blank"}.

## Premier saut sans parachute dans un projet et premières erreurs

Mon premier travail (et mon dernier stage) a été un moment charnière dans ma vie de jeune développeur. C'est sûrement à ce moment-là que je me suis le plus construit professionnellement. Je m'en souviens comme une petite période bénie où des développeurs professionnels m'ont appris comment développer et surtout comment me comporter.

Mon premier projet a démarré comme pour beaucoup de développeurs en ESN par la réception d'un joli cahier des charges qui devait me permettre de me lancer en autonomie (seul) dans la réalisation de mon tout premier logiciel (un ERP).
Je dois dire que ce moment de lecture a été confortable, car ça me rappelait les gros énoncés des projets/examens que j'avais eu lors de mes études. Une consigne claire et orientée solution qui ne laisse pas beaucoup de place à la créativité...

J'ai naturellement demandé de l'aide aux autres développeurs de l'entreprise qui m'ont expliqué patiemment pleins de choses. 
J'étais bien loin d'imaginer que j'allais jeter cette notion d'objets vivant que j'avais vu en cours au profit d'un objet qui n'est rien de plus qu'un tas de donnée que je faisais seulement transiter au sein de services....
Cela m'a fait un petit choc, j'ai eu l'impression de devoir apprendre plein de choses et de ne pas être prêt professionnellement. Je me sentais obligé de faire mes preuves, sans savoir comment faire.

On m'expliquait qu'une classe est la représentation d'une table en base de données, qu'on fait la transiter au sein de services métiers qui s'appellent les uns les autres. Cela me semblait alors logique et plein de bon sens. C'était aussi plus facile à faire et sans grosse complexité comparée à ce que j'avais appris en cours.
Facile au début oui, mais dès que le projet a commencé à grossir j'ai perdu régulièrement le fil des méthodes qui étaient appelées et je devais recommencer de zéro pour m'y retrouver.

On m'a aussi donné un projet exemple sur lequel je pouvais m'appuyer pour comprendre comment je devais développer.
Autant vous dire que j'ai reproduit toutes les erreurs qu'il y avait déjà dans ce projet et que j'y ai ajouté les miennes.
J'étais bien incapable de remettre en question ce projet exemple et encore plus ma manière de développer. J'étais relativement seul à développer et j'ai eu peu d'aide externe sauf quand j'osais la demander.

Voici le résultat de ce qui a été produit :
* Un logiciel orienté CRUD thinking / DATA et pas métier 
* Aucun test unitaire (à l'époque, je ne me doutais pas à quel point ces derniers m'auraient fait gagner du temps et de la sérénité...)
* Des méthodes de plusieurs centaines de lignes gérant des "trucs"
* Des jours entiers pour debuguer des entités qui mutaient dans l'ORM sans que je sache pourquoi
* Des trigger Base De Données qui contenaient de la logique métier et qui avaient été développés sans que je le sache
* Et bien d'autres choses

Aujourd'hui je pense que je trouverais "effrayant" ce que j'ai développé. Même s'il y avait un projet exemple qui m'a fortement guidé dans mes erreurs je pense que j'en ai fait plusieurs qui sont entièrement ma faute :
* Ne pas avoir cherché à comprendre le besoin exprimé, mais uniquement à produire du code qui marche (toujours comprendre le besoin avant de faire des développements !)
* Ne pas demander de l'aide alors que j'en avais besoin
* Ne pas remettre en question l'existant. Parce que oui même avec plusieurs années d'expérience on continue de faire pleins d'erreurs
* Ne pas m'intéresser au métier, mais uniquement au cahier des charges si réconfortant sur le moment (il était vraiment bien écrit, je n'en ai jamais revu d'aussi bonne qualité)
* Faire des erreurs pour rester dans les "temps" qu'une autre personne avait déterminé à ma place... Qui n'a jamais entendu "J'ai vendu cette fonctionnalité 2 jours donc tu dois la faire en 2 jours" ?

Finalement et malgré tout ce que j'ai dit, je garde un très bon souvenir de ce projet. Il s'est bien passé et le client a été super content ! 

## Devenir un professionnel

Une fois ce premier saut réussi j'ai eu la chance d'avoir un nouveau projet ainsi qu'un nouveau manager. Le context était par contre beaucoup plus complexe. Les faux pas pouvaient couter cher et il était hors de question de se planter avec ce client qui était critique pour l'entreprise. 

J'ai commencé à participer à des réunions avec le client, on me demandait mon avis, j'ai dû écrire des spécifications, rassurer le client quand ça allait pas, résoudre des bugs en direct. Tout un tas de choses que je n'avais jamais fait au par avant en aillant juste mon joli cahier des charges.

C'est ici que ma vision de ce qu'une un développeur a changé pour la première fois. On n'est pas un développeur, on est un **professionnel** du développement. Savoir écrire du code ne fait pas de nous un professionnel.

Ce changement, je le dois essentiellement à mon manager de l'époque qui m'a accordé très facilement sa confiance et a su me donner les clés nécessaires pour me professionnaliser. Malgré son côté ESN cette entreprise a toujours été bienveillance en cherchant à faire grandir ses collaborateurs, même les plus inexpérimentés. Avec le recul, je pense que c'est la meilleure ESN dans laquelle puisse espérer tomber un Développeur.

Mais du coup qu'est-ce qui fait de nous des professionnels ? Je dirais qu'avant toute chose que c'est un état d'esprit. La volonté d'apporter de la valeur au produit, à trouver des solutions pertinentes en prenant en compte le context actuel. Cela n'est pas facile et ça l'est encore moins quand on est inexpérimenté. Voici les lignes directrices qui m'ont le plus aider à acquérir cet état d'esprit :
* Justifier ses choix quand on nous le demande
* S'engager à fond dans les développements
* Dire "non" quand les demandes sont déraisonnables
* Ne pas se trouver des excuses pour ne pas faire
* Gérer le temps et les priorités
* Ne pas céder à la pression
* Travailler en équipe, demander de l'aide et proposer la sienne

Sans le savoir j'appliquais beaucoup de conseils du livre [Clean Coder](https://www.oreilly.com/library/view/the-clean-coder/9780132542913/){:target="_blank"} de [Bob Martin](http://cleancoder.com/products){:target="_blank"}.

## PRIMOBOX : L'entreprise qui m'a fait grandir

J'ai fini par partir de cette ESN pour tout un tas de raisons qui me sont propres. C'est comme ça que je suis arrivé chez Primobox et ça été une révélation pour moi. J'y ai perpétué ce que j'avais appris, désappris d'autres choses, évolué et surtout j'y suis devenu ce que je suis aujourd'hui. Un développeur passionné qui sait qu'il lui reste encore bien des choses à apprendre. Cela je vous en parlerais dans un prochain article.

# Conclusion
L'école m'a appris les bases du développement, mais c'est en entreprise que j'ai compris ce que voulait dire être un professionnel du développement. L'école ne nous prépare pas aux enjeux du monde du travail, à comprendre les interactions humaines et à gérer les pressions externes. Tout cela s'acquiert avec l'expérience, et avec de la chance, des collègues seront là pour nous aider.
