---
layout: post
title:  "Post Mortem"
author: vdubois
author2: dboue
categories: [ Agilité, Retour d'expérience ]
image: assets/images/post-mortem/post-mortem.jpg
image_on_home: assets/images/post-mortem/post-mortem.jpg
description: "Retour d'expérience de la refonte d'une application qui ne s'est pas passée exactement comme on aurait pu l'espérer"
hidden: false # à changer pour masquer l'article ou non
---



## La genèse

Le projet de refonte de l'application [**myPrimobox**](https://www.myprimobox.net) a été démarré en 2021. Début 2021, le produit existant comporte plusieurs problèmes majeurs qui nous invitent à revoir notre copie :

* **problèmes de performances** en production qui donnent lieu à de multiples indisponibilités de la plateforme
* **problèmes de conception** qui nous amènent à agir directement sur les données des utilisateurs en production pour "patcher"
* **ergonomie vieillissante** qui met en difficulté nos utilisateurs finaux en fracture numérique

C'est à la fin du deuxième trimestre 2021 que le projet est officiellement démarré

## Une stratégie à plusieurs niveaux



## Changement d'équipe

L'équipe de départ est conposée de deux développeurs plutôt juniors, notre Product Owner ainsi qu'un UX designer qui intervient lors de la phase de lancement.

Très vite, des petits problèmes apparaissent : le manque de séniorité de l'équipe de développement interroge notre CTO qui doit guider l'équipe pour rectifier le tir. Les refactorings s'enchainent : il faut sécuriser l'application dans le temps en s'appuyant sur une architecture hexagonale, mais également en utilisant le Domain-driven design. L'équipe s'essoufle un peu et peine à monter en compétences correctement sur ces sujets. 

En parallèle, le projet ne s'arrête pas, loin de là. Des maquettes, ainsi que des tests utilisateurs sont réalisés, le projet doit avancer. L'équipe bouge, un développeur prestataire finit sa mission, il est remplacé par un développeur interne qui a plus d'expérience. Celui-ci monte en compétences très vite.

Les semaines et les mois passent. Trois autres développeurs arrivent sur le projet, dont deux qui ont de bonnes compétences en Domain-driven design. Avec ce changement d'équipe, certains choix qui ont été fait précédemment posent des questions quant à la perennité du projet :

* Pourquoi être parti sur de la programmation réactive alors que l'équipe n'avait aucune compétence dessus ?
* Pourquoi avoir développé de zéro des fonctionnalités autour de la connexion des utilisateurs alors qu'il existe des solutions sur l'étagère qui font ça très bien ?
* Mais surtout : quelle est la raison d'être de cette refonte ?

## Le big bang

Le vrai challenge technique sur ce projet de refonte ne vient pas forcément de la plateforme elle-même. Il tient surtout à la base d'utilisateurs existants qui est assez conséquente (plusieurs centaines de milliers). 

Que faut-il faire ? Doit-on migrer les données de tous les utilisateurs ? Certains ont des comptes "simples", mais certains ont des comptes dits "complexes", qui demandent plus de temps pour savoir comment les gérer. Que faire des comptes inactifs (personnes qui ne se sont finalement jamais connectées à la plateforme) ?

C'est pour cela qu'est né le projet de migration des données. C'est une application batch à part de l'application de refonte qui tournera pour migrer les comptes de nos utilisateurs le jour de la mise en production (on peut l'appeler jour de la bascule).

C'est donc une migration **big bang** qui est choisie : on migre tout d'un seul coup.

Premier hic : on ne peut en aucun cas dire combien de temps la migration des données va prendre le jour de la mise en production. Que se passera-t-il si cela dure plusieurs heures ? ou plusieurs jours ? Cela pourrait amener une grande indisponibilité pour nos clients, et c'est hors de question.

Les semaines avancent, et l'équipe n'arrive pas à donner un état d'avancement précis sur ce projet aux personnes du pôle produit, cela crée des tensions.

L'équipe de développement commence à se rendre compte que cette migration **big bang** est très éloignée des principes de l'agilité que l'équipe suit scrupuleusement en dehors de ça.

## La remise en question

Début 2022, l'équipe travaille à la fois sur les fonctionnalités de la refonte et sur le batch de migration des données. Et le moins qu'on puisse dire, c'est que la situation, et le mode "big bang" ne convient pas à l'équipe. On sent que l'on va droit dans le mur.

On décide donc de "poser les stylos", et de réfléchir à l'avenir de notre projet. Que fait-on ? Doit-on continuer ? Doit-on abandonner ? Le pôle produit va-t-il nous suivre dans notre démarche ? Il faut remettre les pendules à l'heure et faire réaliser à toutes les parties prenantes que l'on ne peut pas continuer le projet tel qu'il est actuellement. Cette vision "tout ou rien" des choses ne peut pas fonctionner.

En tout cas, on ne pouvait pas continuer à travailler sur cette migration sans avoir un minimum de vision sur les grandes étapes de la refonte, car on allait droit dans le mur. Ce n'est pas très agile de prévoir une migration des données "big bang" qui s'additionne à une refonte qui part en production du jour au lendemain.

Qui plus est, en parallèle, les demandes de nos clients nous remontent par le biais de nos commerciaux, et on n'y répond pas puisque rien n'est livré en production.

On a donc réfléchi à l'ensemble des solutions qui s'offraient à nous, et pour chacune nous avons essayé de faire un macro-planning en notant toutes les grandes actions à effectuer.

## Virage stratégique

Et si la solution venait de la vision agile du produit ? Normalement dans les projets agiles, on livre régulièrement de petits incréments.

On a donc réfléchi avec ce leitmotiv en tête et avons proposé à tous les acteurs de notre produit nos options évaluées précédemment. Une seule de ces options a été validée par l'ensemble des acteurs : la vision échelonnée de la refonte.

Passer d'une vision "big bang" à une vision progressive des choses a été pour nous un grand virage stratégique qui nous a permis d'apporter de la valeur régulièrement et plus facilement.

## Le nouveau départ

Lors de notre sprint de "remise en question", nous avons établi notre nouvelle stratégie

## Apporter de la valeur

## Avoir une vraie stratégie produit