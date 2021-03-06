---
layout: post
title:  "Le “Messager” : un projet pas comme les autres chez Primobox"
author: gsaintetienne
categories: [ Domain Driven Design, Architecture, Retour d'expérience ]
image: assets/images/messager/messager.png
image_on_home: assets/images/messager/messager_home.png
description: "Trouver une entreprise dans laquelle on peut progresser, apprendre, innover, tout en forgeant un logiciel de qualité et des compétences partageables à tout le monde, n’est pas chose courante.

Primobox est de cette trempe là.

Laissez-moi vous raconter brièvement cette aventure que j’ai eu la chance de vivre.
"
hidden: false
---

Trouver une entreprise dans laquelle on peut progresser, apprendre, innover, tout en forgeant un logiciel de qualité et des compétences partageables à tout le monde, n’est pas chose courante.

Primobox est de cette trempe là.

Laissez-moi vous raconter brièvement cette aventure que j’ai eu la chance de vivre.


## Genèse

Vous connaissez l’adage “Diviser pour mieux régner” ? C’est ce que nous invite à faire l’approche DDD (Domain Driven Design). Et c’est avec ce principe en tête (délimiter des Contextes Explicites et [Discrets](https://fr.wikipedia.org/wiki/Topologie_discr%C3%A8te) [^1]) qu’un projet de Messager autonome est né chez Primobox (pour faire simple, le Messager est celui chargé de remettre le courrier à ses destinataires).

Doté d’une grande responsabilité, simple au premier abord mais qui permet d’envisager des options et des possibilités multiples, en toute autonomie.

Une fois ce domaine (contexte) métier spécifique identifié , parmi les autres besoins clients que doivent satisfaire les solutions proposées par Primobox, il était plus facile de lancer un chantier ciblé de modernisation du code.

Avec un périmètre et des relations bien définis, ce véritable “métier dans le métier” allait pouvoir prendre son envol.


## Vision

Un projet réussi commence par une vision. [Alexandre Fillatre](https://www.linkedin.com/in/alexandre-fillatre-696643168/), CTO chez Primobox a su initier et nourrir cette vision. Basée sur une idée simple : les différentes phases qui composent l’activité de l’offre de service chez Primobox (dématérialisation de la relation entre employés et employeurs) ont chacune une raison d’exister propre, tout en étant capable d’interagir avec les autres parties et d’évoluer de manière autonome. Alexandre nous a partagé cette vision et nous a fait confiance pour la mettre en œuvre.


## Utilisateurs

En amont, un vrai travail pour comprendre le besoin utilisateur avait été initié et je l’ai traduit en éléments que nous allions mettre dans le cœur du “Messager”.

[L'atelier de Wording et les User Journeys](https://stephaniewalter.design/fr/blog/introduction-aux-user-journey-maps-modeles-pdf-a-telecharger/) m’ont été très utiles pour cerner le domaine métier dans son ensemble et dans ses particularités.


## Clarté

La clarté se gagne par l’analyse. Grâce aux travaux préliminaires de l’équipe Produit et Ergonomie, j’ai pu coucher sur le papier une carte (à la Wardley) des interactions entre le Messager et les autres éléments qui constituent la solution globale dont nos clients ont besoin.

Cela permet de savoir quelles fonctionnalités sont plus importantes, lesquelles sont annexes, lesquelles sont laissées à la responsabilité d’autres modules (existants ou à créer) voire externalisées.

Des choix stratégiques importants sur le périmètre fonctionnel ont été faits afin de réduire la charge de travail et la complexité présente sur certains produits.

Cela dessine une forme d’architecture, plus basée sur les besoins que la technique.

Cela nous libère aussi des détails techniques, car sur un [Context Mapping](https://github.com/ddd-crew/context-mapping) (toujours cette notion de cartographie) se dessinent les frontières entre les [Bounded Contexts](https://martinfowler.com/bliki/BoundedContext.html); et l’on voit facilement les choix contraints par l’existant (legacy), et par ailleurs les espaces où les contraintes changent de nature. Par exemple, là où la performance est plus importante que la compatibilité.


## Audace

Prendre des paris audacieux, après tout, pourquoi pas ? Pourquoi rester conforme à ce qui a été fait par le passé et se priver de progresser ?

Parlons du langage de développement. Primobox a un historique Java solidement ancré.

Moi j’arrivais du monde .Net.

Alexandre Fillatre a su discerner qu’un bon développeur ne saurait s’arrêter à une syntaxe donnée, l’essentiel étant ce que l’on sait obtenir de tel ou tel langage de développement.

La POO est une chose universelle mais les langages modernes évoluent pour être plus hydrides et flirtent plus facilement avec la Programmation Fonctionnelle. C’est le cas de C#, puis de Java qui lui a emboîté le pas.

Quitte à s’éloigner de C# 9 pour aborder la JVM, autant opter pour un langage du même niveau.

C’est là que nous avons pensé à ... Kotlin !

Etant pour ma part un adepte précoce de C# et de l’écosystème .Net, je n'avais jamais eu à me frotter au monde Java ailleurs que dans mes études. Grâce à Kotlin, franchir le cap a été pour moi d’une facilité déconcertante.

J’ai retrouvé tous mes réflexes acquis en C# avec une syntaxe encore plus élégante. Ayant l’habitude de Linq, Kotlin est naturellement provisionné pour faire la même chose. En mieux ! Et il est facile de trouver de [l’aide](https://kotlinlang.org/docs/collection-operations.html#common-operations) et des [exemples](https://github.com/mythz/kotlin-linq-examples). Et des très bons [tutos](https://www.baeldung.com/kotlin/).


## Arrière boutique

Ah oui, si vous cherchez des ressources sur Kotlin dans les Internets, vous verrez que ce langage est la panacée pour les applications mobiles. Et pourtant ! C’est excessivement réducteur.

Kotlin produit (aussi) du bytecode qui va tourner sur la JVM. Donc c’est un parfait candidat pour tout le code backend. C’est ce que nous avons fait pour cette application complexe, avec une architecture très évoluée, ce qui nous a permis d’être parfaitement intégré dans l’existant Java et surtout très performant.


## Idiomes

Quitte à choisir un langage qui nous était inconnu (à moi et mon coreligionnaire, pur Javaiste pour sa part) jusqu’ici, [autant le faire bien et complètement](https://kotlinlang.org/docs/idioms.html).

Kotlin a de multiples talents. Facile d’apprentissage, il emprunte un peu à Typescript, C#, Scala et bien sûr Java, puisqu’il produit du bytecode ciblé pour la JVM.

Son éditeur (Jetbrains) a tout fait pour que les développeurs Java s’y retrouvent, et puissent même ré-utiliser n’importe quelle classe du JDK ou n’importe quelle lib Java. Et ça fonctionne très bien. On peut même écrire du code “façon Java” (utiliser des exceptions, mettre des if en pagaille, des null partout...).
Bref, si on n’y prenait garde, on écrirait presque du Kotlin qui ressemble à du “mauvais” Java (je veux dire par là du Java d’avant guerre, avant la version 8 si vous préférez...).

Pourtant avec Kotlin, tout est fait pour écrire du code “élégant”. J’en veux pour preuve la non nullabilité des types par défaut, [l’immutabilité](https://medium.com/@johnmcclean/dysfunctional-programming-in-java-2-immutability-a2cff487c224) par défaut, la présence des data classes (équivalent des Records de C# ou Java 16) parmi tant de choses qui m’ont enchantées.
On notera aussi que Kotlin dispose nativement de structures de données avancées (Pair, Triple, Linked List, Tree, etc...) et de possibilités de [manipulation de fonctions](https://www.baeldung.com/kotlin/category/functions) qui sont juste délicieuses.

Et j’allais oublier de mentionner les très [puissantes co-routines](https://www.baeldung.com/kotlin/coroutines).


## Attention

Tout au long de notre travail, une attention particulière a été portée aux autres membres de l’équipe. Nous avons communiqué régulièrement :

* sur l’avancée du projet, même si nous n’avions pas de revue de sprint (on en parle plus loin), sur les innovations ou techniques que nous avions choisi de mettre en œuvre, car celles-ci pouvaient aussi trouver leur place dans d’autres projets du groupe.

Nous sommes aussi dans une démarche d’invitation permanente : tous les autres membres de la R&D peuvent venir collaborer au projet, apprendre Kotlin ou tout autre concept que nous avons mis en œuvre.

## Langage Naturel

Le langage des utilisateurs et des experts métier a été le nôtre tout le long de la réalisation.

Pas de jargon de développeurs.

Notre domaine métier est en français. Toute la modélisation et le codage du logiciel se sont donc faits dans cette belle langue.

Nous avons réservé l’anglais pour les parties purement techniques (logées dans des composants isolés et accessibles via les Ports & Adaptateurs, conformément à l’architecture hexagonale exposée plus loin); par exemple la mécanique d’accès à la base de données ou au bus de message.

C’est très pratique pour se rendre compte au premier coup d'œil si notre métier (en français) reste pur et ne se mélange pas avec des considérations techniques (en anglais).

## Stratégie

L'approche DDD est un guide dans la nuit. Ce n’est pas à proprement parler une méthode, et surtout pas un framework. C’est un ensemble d’outils et de bonnes pratiques, tout à fait compatible avec l’agilité et le software craftsmanship.

Nous avons eu cette approche d’emblée, dès les premières heures du projet. C’est, il me semble, la condition sine qua non pour réussir.

![DDD starter](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/8o9r2etj2tth05ulw2f9.jpeg)

Comme dit précédemment, j’ai commencé par la mise en place d’une Wardley Map, puis avec [Damien Boué](https://www.linkedin.com/in/damien-boue/) nous avons travaillé sur des Bounded Contexts Maps. Cela nous a permis de nous synchroniser aussi avec les équipes Produit.

## Tactique

En DDD la stratégie s’accompagne toujours d’une tactique, je ne vais pas vous faire ici un cours de DDD, les ressources sur Internet ne manquent pas.

Je ne vais pas vous parler ici des essentielles décompositions en agrégats, entités et value objects (chasser la Primitive Obsession).

Je vous dirai seulement qu’une des leçons que nous avons apprises est de songer sérieusement à limiter la taille de nos agrégats ! (cf ces [bons conseils peu connus de Vaughn Vernon](https://www.dddcommunity.org/library/vernon_2011/))

Jusqu’à ce qu’ils ne contiennent qu’une entité. Cette idée peut vous paraître saugrenue mais vous lui direz merci quand vous verrez la complexité accidentelle poindre son nez.

Bien sûr cela demande à réfléchir plus et surtout à ne pas se laisser entraîner par une conception basée sur le Mapping Objet Relationnel (ORM ou Objet Documents Mapping dans le cas des entrepôts NoSQL) qui, entre autres inconvénients, pousse notre modèle à être anémique. Mais aussi lorsque l'exécution de nos adapters devient concurrente (comme dans toutes les API Web), nous aurait obligé à poser des verrous transactionnels (et donc faire effondrer la performance). Cela est inévitable lorsque les agrégats sont trop gros et que l’on veut y accéder en écriture.

Donc, gardons les atomiques !

## Coeur

L'une des (nombreuses) brillantes idées de ce projet a été de suivre le précepte de “[Functional Core/ Imperative Shell](https://www.destroyallsoftware.com/screencasts/catalog/functional-core-imperative-shell)”, introduit en 2012 dans la communauté Ruby, puis repris plus récemment par [Kenneth Lange](https://www.kennethlange.com/) et aussi par [Thoman Pierrain & Bruno BOUCARD](https://www.slideshare.net/ThomasPierrain/hexagonal-architecture-vs-functional-core-iom) ;

Cette approche a d’énormes avantages, citons-en 2 :

* d'abord repousser les effets de bord (les fameux, ceux qui rendent vos tests trop compliqués, plus du tout isolés, voire inconsistants et cachent de nombreux bugs) en dehors des considérations métier.
* corollaire : cela vous permet de vous concentrer sur la seule logique métier de manière fonctionnelle, c'est-à-dire en privilégiant [l’immutabilité](https://medium.com/@johnmcclean/dysfunctional-programming-in-java-2-immutability-a2cff487c224) et la [transparence référentielle](https://sookocheff.com/post/fp/why-functional-programming/).

Cette façon de penser le logiciel en y plaçant un cœur purement fonctionnel (dans les 2 sens du terme) permet d’isoler vraiment les tests métiers et donc [de se passer entièrement des mocks à cet endroit](https://www.destroyallsoftware.com/blog/2014/test-isolation-is-about-avoiding-mocks).

Dans le cœur métier propre du Messager sont également apparues d’autres frontières, et donc d’autres Bounded Context pour des composants qui avaient besoin de pouvoir évoluer sans casser les autres. Tout ce travail d’_isolation_ (via des ACL, anti corruption layers) est primordial pour ne pas s’enfermer dans une complexité accidentelle et dans ce qui devient inexorablement, malgré toute bonne volonté, une “big ball of mud” (grosse boule de boue).

## Hexagone

Il y a le cœur fonctionnel, et il y a la coquille (shell en Anglais). C’est ce que l’on retrouve aussi dans les [architectures hexagonales](https://alistair.cockburn.us/hexagonal-architecture/) (ou [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)).

Dans la partie coquille (hors cœur métier donc) on va retrouver les ports et adaptateurs.

C’est cette philosophie que nous avons appliquée fortement.

Et nous avons fabriqué des adaptateurs techniques pour toute situation spécifique.

L'absorption de commandes venues d’une API REST est un adaptateur indépendant. Il a une dépendance directe avec les objets métiers.
Par contre pour toute opération en base de données (nous avons, en prévision d’un CQRS séparé les opérations de lecture et celles d’écriture), il y a des adaptateurs dédiés.

Il en va de même pour les opérations d’envoi et de réception de messages dans un bus (afin de prévenir les agents dans d’autres Bounded Contexts qu’un événement important s’est passé dans notre domaine.

## Qualité

TDD offre ce double avantage d’être la méthode d’écriture du logiciel (et non de test) qui nous a permis de faire du design émergent guidé par le DDD tactique et de toujours se fixer des petits pas. Et bien sûr, on obtient une couverture de tests très satisfaisante, puisqu'aucune ligne de code ne devrait être écrite si elle n’est pas justifiée par un test.

Kotlin (encore lui !) vient avec une géniale librairie : Kotest. Attention à ne pas faire comme moi au début, de faire la confusion entre KotlinTest et Kotest.

C’est bien Kotest qui permet de choisir parmi moult styles de tests, il y en a vraiment pour tout le monde : style Behaviour Driven Development (celui que nous avons choisi), style Scala, Ruby, Cucumber ou JavaScript/TypeScript. Ou ce bon vieux JUnit.

Écrire des tests, c’est bien joli, mais encore faut-il s'assurer qu’ils servent à quelque chose et qu’ils sont robustes.

Les outils déjà en place pour les autres projets Java de l’entreprise (Jenkins, SonarQube, un scanner de vulnérabilité des dépendances) se sont parfaitement intégrés à notre nouveau projet Kotlin.

La Couverture de code a pu donc être constamment mesurée, mais j’en dirai plus au prochain chapitre.

D’autres outils sont venus renforcer cette recherche de qualité :

* [ArchUnit](https://www.archunit.org/getting-started), pour vérifier en permanence le bon usage des dépendances et [vérifier que nous ne cassions pas les principes de l’architecture hexagonale](https://blog.scottlogic.com/2019/12/05/unit-test-your-architecture-with-archunit.html).
* [Gatling](https://www.baeldung.com/introduction-to-gatling) pour s’assurer que notre solution tient la charge en situation réelle

## Rigueur

Un grand enjeu de la qualité logicielle semble être la couverture de code, mais cette mesure peut s’avérer erronée, comme je le prouve dans [ma présentation sur les tests par mutation de code](https://www.linkedin.com/posts/guillaumese_des-mutants-dans-le-code-activity-6870318621411876864-RD_g).

Dans ce projet, il nous a paru opportun de consolider notre approche TDD, parce qu’après tout nous sommes tous faillibles, et qu’un outil qui nous montre que nous manquons de tests, que des bugs sont encore présents, est tout simplement une aubaine.

Nous avons choisi la lib PiTest, qui fonctionne sur le ByteCode Java, et donc très bien avec Kotlin.

Simple d’usage, facile à ajouter à un pipeline d’intégration continue, cet outil va nous aider à mieux coder et mieux tester (l’un ne va pas sans l’autre). Il nous a rappelé sans faillir aux règles du TDD (ne pas écrire une instruction qui ne soit justifiée par un test).

Par contre, il est avisé d’utiliser ce genre d’outil sur du nouveau code plutôt que sur du legacy, et de cibler du code purement métier, c'est-à-dire au centre (functional core) de l'architecture hexagonale.

## Paradigme (changement de)

Ce n’est pas chose facile que de bousculer (un peu) les habitudes des développeurs. Alors que la programmation orientée objet est maîtrisée par tous mes collègues, je leur ai fait la proposition de parier sur l’immutabilité.

L’immutabilité, c’est quoi ?  Une idée qui nous vient de la programmation fonctionnelle mais qui s’applique très bien à la POO. Le principe est simple : quand les objets ne “mutent” pas (comprendre : ne changent pas d’état) alors ils sont plus facile à maîtriser, à comprendre et surtout on évite beaucoup, beaucoup de bugs car on limite grandement les effets de bord dans les méthodes de ces objets immuables.

Mieux encore, cette immutabilité est facile à obtenir avec des langages tels que Kotlin (celui que nous avons choisi pour ce projet) ou même Java (le mot clé _final_ existe et il a été ensuite complété avec des librairies qui poussent une vraie immutabilité des objets, comme par exemple  [https://www.baeldung.com/immutables](https://www.baeldung.com/immutables)).

Elle permet de transitionner naturellement vers une écriture de code plus “fonctionnelle” c'est-à-dire avec une meilleur répartition des responsabilités (voir chapitre suivant), et une plus grande intégrité référentielle.

## Solide

Notre attention s'est focalisée sur la production d' un code SOLID. Ce n’est pas facile de vous parler des principes d’un code SOLID, surtout que cela fait partie de la grande famille du code “propre” (Clean Code). Le premier principe est peut être le plus important et le plus simple à comprendre : Simple Responsibility. Et tous les autres en découlent. Nous avons toujours cherché dans ce projet à exprimer et répartir les responsabilités de façon très claire et très cohérente entre les différents modules.

Que ce soit dans le découpage métier (Bounded Contexts, DDD Stratégique) ou dans l’approche technique (Archi Héxagonale DDD Tactique), notre objectif a tout le temps été de limiter la responsabilité à un niveau minimal et acceptable, afin de mieux séparer et isoler ces responsabilités. Les cartes CRC nous ont aussi beaucoup aidé à y voir plus clair dans notre design.

## Découplé

Le découplage est un fondamental à la fois de l’architecture d’un logiciel mais aussi de la journée ordinaire d’un développeur. Il s’agit simplement de ne pas accumuler la complexité et les interactions douteuses qui peuvent se loger dans le code. Pour cela nous avons fait le choix d’abstractions pour définir et maîtriser ces fameuses dépendances.

L’idée est d’exprimer simplement les choses en termes de “quoi” et non de “comment”.

Exemple : au lieu de dire à notre code “je veux une base de données Mongo pour stocker des informations”, nous avons établi une abstraction (interface) qui dit “je veux pouvoir stocker cette information”. Le “comment” ne nous intéresse absolument pas.

En se référant à cette abstraction (“Je_veux_stocker_information_X”), nous voilà libres de son implémentation. Et c’est double bénéfice.

D’abord nous pouvons choisir librement l’implémentation et en changer à tout moment au cours de la vie du projet (nous avons choisi Mongo DB mais peut être que ce choix sera remis en cause).

Et surtout, pendant les tests fonctionnels, nous n’avons pas l’obligation de mettre en route la fameuse base de données Mongo que nous avons choisie pour la production. Nous pouvons juste utiliser un fake, c'est-à-dire une implémentation naïve, simpliste.

## Evenementiel

Une autre grande force de ce projet est que nous avons d’emblée pris en compte la nature événementielle d’une application. Dans un logiciel, il se passe des choses.

Il est plus important de capturer des évènements que d’enregistrer l’état des objets.

Malheureusement, trop d’applications sont développées en mode CRUD (Create Read Update Delete), aidées (mais pas dans le bon sens) par les frameworks de mapping ORM. Ce mode de développement rend compliqué toute migration fonctionnelle, car justement il est difficile de placer des règles métiers quand on pense que tout se limite à des opérations d’ajout/modification/suppression/lecture en base de données.

En pensant événements, on est au contraire ouvert à tout ce qui peut se passer comme vérifications, contraintes, évolution du métier. On est bien plus proche des actions des utilisateurs.

On peut créer des programmes plus aptes à répondre au besoin métier, et moins coincé dans une solution technique.

En pratique, nos agrégats métiers émettent des événements, en réaction à des commandes, après avoir opéré les vérifications métier qui s’imposent. Nous avons mis en place un mécanisme de remontée automatique des événements (event bubbling) depuis les entités filles qui composent un agrégat global (grâce à ReactiveX et ses [Observables](https://reactivex.io/documentation/observable.html)).

## Partage

Cela a été une discussion intéressante (parmi tant d’autres) : Comment s’y prendre pour se partager le travail et le partager avec les autres ? Bien sûr il y a l’usage de l’attirail Jira, Git, Jenkins... Mais ce qui importe c’est surtout la façon dont on s’en sert.

Nous avons opté pour des [ADR](https://adr.github.io/) dans les points clé de notre repository, afin de garder trace de nos discussions et de remettre en contexte les choix tactiques opérés dans le code.

Nous avons aussi mis l’accent sur le pair programming. Mais nous avions quand même voulu garder les [Code Reviews](https://trunkbaseddevelopment.com/continuous-review/), pour prendre de la hauteur sur le code produit (essentiellement par Damien Boué et moi même). Je suis plus partisan du [Trunk Based Development](https://www.freecodecamp.org/news/why-you-should-not-use-feature-branches-a86950126124/), mais en adoptant des tests plus longs à exécuter comme le Mutation Testing, il était intéressant d’isoler tout nouveau code dans une branche dédiée afin de voir s’exécuter correctement  toute la lignée de tests, sans compromettre la branche principale (on aurait pu faire du [TCR](https://blog.zenika.com/2018/12/03/tdd-est-mort-longue-vie-tcr/) mais c’est un peu violent).

Nous avons plutôt opté pour des [Short Lived Branch](https://trunkbaseddevelopment.com/short-lived-feature-branches/) avec des règles du jeu : pas plus de 2 branches différentes en simultané et ne portant pas sur les mêmes "zones" du code.

Au bout d’un moment, nous avions assez d’abstractions ([branching by abstraction](https://trunkbaseddevelopment.com/branch-by-abstraction/)) pour éviter des “rebase” douloureux.

Bien sûr, quand nous avions à faire des refactoring qui touchaient plusieurs endroits du code, il fallait d’abord solder toutes les branches en cours, avant de s’attaquer à des modifications qui auraient eu trop d’impacts sur l’architecture ou les interfaces fondatrices.

Pour éviter que les refactoring ne durent trop longtemps et ne conduisent à des réconciliations de code houleuses, j’ai recommandé d’adopter la méthode [Mikado](https://blog.engineering.publicissapient.fr/2020/03/20/domptez-vos-refactoring-avec-la-mikado-method/), afin, une fois de plus, de progresser par petits pas, de merger très très souvent, de ne pas se lancer dans des travaux d’Hercule, et de se rendre compte des problèmes au plus tôt.

Le refactoring devient également plus aisé en adoptant la méthode "[parallel change](https://martinfowler.com/bliki/ParallelChange.html)” ou “[expand and contract](https://medium.com/dan-the-dev/refactoring-parallel-change-trunk-based-development-97f38bea86ae)” : on ne casse pas l’existant; on implémente dans une nouvelle méthode ce qui doit être refactoré, et petit à petit on transite vers le nouveau code, avant d’effacer l’ancien quand il n’est plus utilisé nulle part.

Encore une fois, l’architecture hexagonale, avec son découplage maximum, nous a permis de minimiser la casse.

Je suis très content d’avoir travaillé comme cela, car les revues de code nous ont permis de se poser la question “est ce que notre design reste cohérent” à chaque étape de la construction du logiciel.

## Agilité

Il était important d’avoir du feedback rapide même sur un produit qui n’est pas encore mis en exploitation. Nous avons opté pour un travail en flux type Kanban, avec des jalons variables qui étaient matérialisés par des Minor Releases, selon nos désidérata et contraintes.

Nous avons pu compter sur une Intégration Continue (CI/CD) super efficace grâce au soutien de l’équipe DevOps en place.

## Résultat

Le projet n’est pas encore terminé, et vous n’en verrez pas une démonstration graphique, car ce n’est qu’un composant au milieu de tant d’autres. Mais comme il va devenir un maillon fort de l’édifice logiciel de Primobox, c’est la fiabilité, la rapidité et la performance de produits qui vont s’en trouver renforcées. Ainsi que la maîtrise technique des équipes R&D.

## Exemplaire

Ce qui est d’emblée visible ce sont les métriques d’un code de qualité, tel que peut nous les montrer Sonarqube. Et pour moi c’est une grande fierté d’avoir contribué à ce projet.

![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/k30y78firzt2xl93svso.png)

<!-- Footnotes themselves at the bottom. -->
## Notes

[^1]:
Discret au sens mathématique du terme : qui est clairement délimité, séparé, isolé.