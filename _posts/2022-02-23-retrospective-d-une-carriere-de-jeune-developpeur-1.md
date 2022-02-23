---
layout: post
title:  "Ma carrière de jeune développeur (1/2)"
author: dboue
categories: [ Retour d'expérience, Clean codeur ]
image: assets/images/retrospective-d-une-carriere-de-jeune-developpeur-1/developpeur-bureau.jpg
description: "Description détaillée de l'article"
hidden: false # à changer pour masquer l'article ou non
---

Cela fait maintenant 5 ans que j'ai terminé mes études et pourtant je n'ai eu de cesse de revoir ma définition de ce que c'est qu'être un développeur. 

Cet article est une rétrospective de ma carrière et de comment j'en suis arrivé à changer ma vision de mon travail.

## Mes études
Je pense que j'ai eu de la chance dans mes études, j'ai eu de super profs qui ont su transmettre leur savoir à tous les niveaux. À l'époque j'étais encore indécis sur la branche de l'informatique que je souhaitais explorer. Créer des infrastructures réseaux, je connaissais un peu je l'avais déjà fait à plusieurs reprises, c'était quelque chose de connu et de confortable pour moi. 

Mais dans le développement, il y avait un côté créatif qui me plaisait beaucoup, une exploration du métier intéressante, avec pour point de convergence la POO. Une notion très abstraite au premier abord, mais qui démontre toute sa puissance quand on la maitrise.

J'ai vraiment adoré ces notions d'objets vivants qui représente quelque chose dans le monde réel. Comment en leur envoyant des commandes on les fait vivre, et comment ils nous rendent un service. C'est une notion qui m'était cher et je l'ai retrouvé que bien plus tard quand j'ai lu Elegant Objects de Yegor Bugayenko.

A ce moment-là j'avais alors hate de voir comment j'allais pouvoir utiliser tout ça dans un vrai cas métier.

## Mon premier travail

Mon premier travail (et mon dernier stage) a été un moment charnière dans ma vie de jeune développeur, c'est surement à ce moment-là que je me suis le plus construit professionnellement. Je m'en souviens comme une petite période bénie où de vrais développeurs m'ont appris comment développer et surtout comment me comporter.

Mon premier projet a démarré comme beaucoup de projet en ESN. On m'a donné un joli cahier des charges et je pouvais alors me lancer en autonomie dans la réalisation de ce tout premier logiciel (ERP).
Je dois dire que ce moment de lecture a été confortable, car ça me rappelait les gros énoncés de projets/examens que j'avais eu lors de mes études. Une consigne claire, dirigiste, qui ne laisse par contre pas beaucoup de place à la créativité, mais avec beaucoup de choses à assimiler...

J'ai naturellement demandé de l'aide aux autres développeurs de l'entreprise qui m'ont expliqué patiemment pleins de choses. 
J'étais bien loin d'imaginer que j'allais jeter cette notion d'objets vivant que j'avais vu en cours au profit d'un objet qui n'est rien de plus qu'un tas de donnée que je fais transiter au sein de services et qui n'ont plus aucunes responsabilités.... 
Cela m'a fait un petit choc, j'ai eu l'impression de devoir apprendre pleins de choses et d'être clairement à la ramasse, mais il fallait y aller et surtout faire ses preuves...

Une class est la représentation d'une table en base de données, qu'on fait transiter au sein de services métiers qui s'appellent les uns les autres. Les explications que je recevais me semblaient alors logique et pleines de bon sens. Et puis c'était quand même vachement facile à faire au premier abord et sans grosse complexité.
Facile au début oui, mais dès que le projet a grossi je perdais régulièrement le fil des méthodes qui étaient appelées et je devais recommencer de 0 pour m'y retrouver. C'est à ce moment-là que j'ai découvert LA zone de concentration ultime permettant de développer rapidement en gardant en mémoire toutes les étapes, c'est assez classique et souvent recherché par beaucoup de développeurs.

Ha cette fameuse de zone de concentration ultime que je chérissais tant et qui me permettait d'être "efficace"... Aujourd'hui je la fuis le plus possible car elle m'empêche de prendre le recul nécessaire pour répondre au besoin métier... Mais je digresse et ce n'est pas l'objet de cet article...

On m'a aussi donné un projet exemple sur lequel je pouvais m'appuyer pour comprendre comment je devais développer.
Autant vous dire que j'ai reproduit toutes les erreurs qu'il y avait déjà dans ce projet et que j'ai ajouté les miennes.
À l'époque j'étais bien incapable de remettre en question ce projet exemple et encore plus ma manière de développer. J'étais relativement seul sur le projet et j'ai eu peu d'aide externe sauf quand j'osais la demander. J'étais dans les temps donc personne me demandais des comptes et personnes a pris le temps de vérifier que je ne faisais pas de "bêtises".

Voici le résultat de ce qui a été produit :
* Un logiciel orienté CRUD thinking / DATA et pas métier 
* 0 tests unitaires (à l'époque je ne me doutais pas à quel point ces derniers m'auraient fait gagner du temps et de la sérénité...)
* Des méthodes de plusieurs centaines de lignes gérant des "trucs"
* Des jours pour debug des entités qui mutaient dans l'ORM sans que je sache pourquoi
* Des trigger Base De Données qui contenaient de la logique métier et qui avait développé sans que je le sache (ça j'y ai fait la chasse et je les ai tous éradiqué)
* ...

Aujourd'hui je pense que je trouverais "effrayant" ce que j'ai développé. Même s'il y avait un projet exemple qui m'a fortement guidé dans mes erreurs je pense que j'en ai fait plusieurs qui sont entièrement ma faute :
* Ne pas demander de l'aide et qu'écrire des lignes de code qui marchaient suffisait à faire du dev de qualité. À l'école on nous apprend à coder, mais pas à le faire avec qualité, tant que le code affiche les bons trucs c'est qu'il marche on gagne les points. Aujourd'hui je sais que ça ne suffit pas et j'ai lu trop tard Clean Code de Bob Martin, et la différence entre un codeur et un développeur se ressent dans la qualité du code pour moi
* Ne pas remettre en question l'existant. Parce que oui même avec plusieurs années d'expérience on continue de faire pleins d'erreurs
* Ne pas m'intéresser au métier, mais uniquement au cahier des charge si réconfortant sur le moment (en plus il était bien écrit, vraiment je n'en ai jamais revu des comme ça)
* Faire des erreurs pour rester dans les "temps" qu'une autre personne avait déterminé à ma place... Qui n'a jamais entendu j'ai vendu 2 jours donc tu dois le faire en 2 jours? ...

Au final et malgré tout ce que j'ai dit, je garde un très bon souvenir de ce projet. Il s'est bien passé et le client a été super content ! 

Ce qui a suivi dans cette entreprise est une suite de projets sur les mêmes bases, mais ce premier projet a posé les bases pour que j'apprenne à me comporter en tant que professionnel :
* ici mettre des notions de clean code

J'étais dans une "ESN" à taille humaine remplie de personnes super. Un mode cycle en V, ou j'ai appris à justifier chacun de mes choix, à toujours m'engager quand cela était nécessaire, et surtout à ne pas le faire lorsque les demandes étaient déraisonnable (surtout sur le temps), sans le savoir j'appliquai pas mal des conseils de Clean Coder de Bob Martin, et ça je le dois essentiellement à mon manager de l'époque qui m'a accordé très facilement sa confiance, avec le recule je pense que j'ai eu beaucoup de chance de l'avoir.

## Mon second travail Primobox

Il est temps de partir vers de nouveaux horizons nommé Primobox, j'y ai perpétué ce que j'avais appris, désappris d'autres choses, évolué et surtout j'y suis devenu ce que je suis un aujourd'hui. Un développeur passionné qui sait qu'il lui reste encore bien des choses à apprendre.