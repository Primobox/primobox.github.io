---
layout: post
title:  "Les microservices, c'est pas automatique !"
author: afillatre
categories: [ TDD, Architecture, Microservices ]
image: assets/images/nom-de-l-article/nom-de-l-article.jpg
description: "Depuis maintenant des années, on parle souvent des microservices comme de la solution à tous les problèmes du monde du logiciel. Alors non seulement l'idée ne date pas d'hier, mais surtout est-ce si bien que cela ?"
hidden: false # à changer pour masquer l'article ou non
---

## Un effet de mode

Rentrons rapidement dans le vif du sujet.
J'ai moi-même participé à cette *hype* il y a quelques années, avec très certainement un manque de recul et un engouement démesuré pour une manière de faire qui semblait nouvelle et révolutionnaire. Dans le monde du java qui est le mien, Netflix avait pavé la route en mettant à disposition tout un tas d'outils promettants monts et merveilles, et Spring Boot - déjà très à la mode aussi - rendait la chose encore plus simple.

Enormément d'entreprises (et donc de développeurs) se sont engouffrés dans cette brèche, pour déchanter quelques années plus tard.

Cet article expliquera, de la manière la plus factuelle possible, l'ensemble des choses qui faut comprendre sur les microservices pour pouvoir décider, en toute connaissance de cause, s'il est pertinent de s'y lancer ou non. Aujourd'hui, l'effet de mode sur ce sujet s'est bien dissipé (bien qu'encore assez présent), et même si la technologie autour de cette pratique a bien évoluée, il n'en reste pas moins que c'est un chemin complexe et souvent anti-productif.

Pour les plus avertis d'entre-vous, vous trouverez très certainement des raccourcis dans mon discours, ou des choses qui ne sont pas entièrement expliquées. Cela est voulu et assumé pour que ce billet reste digeste et ne se transforme pas en livre blanc sur le sujet. Si des zones d'ombre vous intéressent particulièrement, nous pourrons faire un article dédié à leur sujet. 

## Les principales problématiques des logiciels
Ci-dessous, une présentation de 4 difficultés récurrentes dans le monde du logiciel. La liste n'est pas exhaustive, mais contient celles qui me semblent être les plus représentatives des problématiques du moment.

#### La complexité
Le plus gros problème que l'on rencontre est, à mon sens, la complexité. Avec la montée en puissance du hardware (un téléphone est maintenant plus puissant qu'un ordinateur d'il y a 10 ans, voire même 5 ans), le nombre de logiciels qui explose, l'impatience croissante des consommateurs (tout le monde veut tout, tout de suite), il en résulte mécaniquement que les logiciels que l'on produit doivent être de plus en plus complexes.

On explique la complexité par le fait que l'on fait mieux que ses concurrents; elle justifie d'écrire plus de lignes de code; elle nous donne le sentiment d'avoir bien travaillé, et réussi à faire ce que d'autres ne sont même pas cabale de comprendre.

Bref, la complexité se développe dans nos applications, et sans trop de surprise, le retour de bâton ne tarde en général jamais à arriver : temps de développement qui explose, montée en compétence compliquée des nouveaux, relecture hasardeuse et pénible de son propre code, etc.

Si seulement il existait un moyen de réduire cette grande complexité en un ensemble de petits problèmes plus simple...

#### La performance
Lorsque l'on met un application en production, et qu'elle fonctionne bien, la question de la scalabilité se pose : *comment faire pour servir plus de traffic ?*

Il y a 3 réponses principales :
 * la scalabilité verticale : on augmente la capacité des machines (ajout de ressources)
 * la scalabilité horizontale : on déploie de nouvelles instances 
 * l'optimisation : on optimise le code, pour que l'application tourne mieux (oui, oui, c'est une vraie méthode, bien que souvent oubliée / ignorée)
 
La scalabilité verticale a ses limites, car un serveur très performant coûte rapidement très cher. L'optimisation aussi a ses limites, car le temps investi devient à un moment bien supérieur au gain effectif. La scalabilité horizontale est un bon compromis, mais elle implique quand même quelques choses à ne pas négliger (discutées plus tard dans la suite de ce billet).

Un autre aspect de la performance qu'il ne faut pas oublier, c'est les environnement de dev (donc des développeurs). Travailler sur une application trop grosse peut devenir compliqué pour le quotidien d'un dev, qui verra sa machine régulièrement à court de ressources. Tout le monde ne peut pas se payer tous les 2 ans des machines à plus de 2 000 euros, sous prétexte que *ça rame*.

Existe-t-il un moyen de découper une application en plusieurs petites qui consommeraient moins ?

#### Le modèle de données
Vous le savez bien, quand on commence à travailler sur un logiciel, on choisi en premier... la base de données (ok, il y a de l'ironie dans cette phrase, mais elle est malheureusement très proche de la réalité). Et cette base de données devient le coeur névralgique de l'application. Elle grossi de plus en plus, on y ajoute des tables/documents/clés et des colonnes/propriétés/valeurs, et bien sûr tout le monde vient chercher dedans les informations qui l'intéresse.

On se retrouve rapidement avec un système qui a grossi, et on ne sait même plus qui a besoin de quoi. Cela se traduit le plus souvent par une peur voire une incapacité à faire évoluer le modèle, et à le nettoyer (on ne veut pas casser une requête qui ***pourrait*** exister sur cette donnée). Au final, un modèle de données qui se dégrade de plus en plus (on ajoute, on ne supprime pas), et un couplage de plus en plus fort et de moins en moins maitrisé.

Comment faire pour rester maître de ses données ?

#### Les technologies
La technologie évolue vite, plus vite que nos logiciels. Alors à un moment, il faut se lancer, et faire des mises à jours. Quand je dis "à un moment", ce n'est pas forcément dans la minute, dans l'année, ou même dans les 5 ans. Tout cela est une gestion du risque, mais c'est un autre sujet. Par contre, c'est sûr qu'à un moment il faudra évoluer.

Le problème, c'est qu'en général, il faut faire évoluer toute sa base de code en même temps car... c'est le même logiciel. Et ça.... ça pique un peu, voire beaucoup.

Pire, si au lieu de faire une "simple" montée de version, on décide de changer complètement de langage ou de paradigme ? Là c'est la cata. Des semaines, mois, années de boulot pour tout ré-écrire, tout en maintenant l'ancien logiciel en parallèle (car oui, il rapporte quand même des sous en attendant). Et la cerise sur le gâteau, c'est quand le nouveau logiciel met tellement de temps à sortir, qu'il faut continuer à faire évoluer l'ancien pendant ce temps. Si vous avez quelques années d'expérience et vu 2 ou 3 sociétés différentes, il y a de grandes chances que cela vous parle, tellement c'est fréquent.

Et si l'on ne migre pas ? Alors on choisi souvent entre subir des failles de sécurité, des difficultés à recruter, ou un manque de documentation sur le net.

Alors, comment ne pas subir la techno, et rester en capacité d'en changer lorsque c'est nécessaire ?

## Les microservices à la rescousse !

"Le code est pourri, on y comprend rien !", faisons des microservices !

"Mon appli consomme 8Go de ram, je ne peux pas la scaler", faisons des microservices ! 

"J'en ai marre que les gens tapent directement dans nos bases. On va leur faire une API", faisons des microservices ! 

"C'est chiant de ne pas pouvoir faire de Kotlin", faisons des microservices ! 

Donc si l'on veut :
 * réduire la complexité en plusieurs petits problèmes plus simples,
 * avoir des applications qui consomment moins et qui nous permettent de scaler uniquement le nécessaire
 * rester maître de ses données
 * pouvoir faire évoluer simplement les technologies utilisées
alors les microservices semblent être le Graal.


Et sur le papier, c'est très beau ! Un ensemble de services autonomes qui discutent sagement entre eux, qui préviennent rapidement en cas de problème, qui ne font pas écrouler tout le système lors d'un bug, qui ne consomment que le strict nécessaire, qui sont gérés par des équipes différentes (mais qui discutent bien entre-elles), etc. La liste des bienfaits [marketing ?] des microservices est longue.

## Le revers de la médaille
Vous vous en doutez (et le ton ironique que j'emploies sciemment est un indice), ce n'est pas non plus le monde des Bisounours. Si l'on regarde de plus près, pour que cela fonctionne, il y a beaucoup de choses à prendre en compte.

#### Le découpage en microservices
Surement le sujet le plus complexe, et là où la majorité des équipes se plantent. Comment découper un affreux monolithe en jolis microservices ?

###### La phase de découpage
Toute bonne migration commence par de la réflexion. La question **_primordiale_** à se poser est la suivante : comment et quoi découper ?

C'est cette question qui est la plus complexe à ce stade. Un découpage trop fin augmentera le nombre de microservices nécessaires, et donc toute la complexité associée. Un découpage trop approximatif va entraîner une dépendance forte (couplage) entre les microservices, annihilant leurs effets bénéfiques. Il existe des techniques pour faire un bon découpage, et si vous ne les connaissez pas, alors c'est déjà une première alerte rouge que les microservices ne sont pas la bonne solution.

###### La phase de transition
Dans un monolithe, les appels de code se font de manière local (i.e. dans le même process). Par exemple, pour les langages à base de machine virtuelle, les appels entre les méthodes se font dans la même instance de VM. Hors si l'on veut découper cela en plusieurs applications, il faut changer cela, et passer par un autre protocole. En général, on favorise les APIs Web (JSON par exemple), ou les files de messages.

Il y a donc une première phase de modification de l'existant, pour transformer bon nombre d'appels ad-hoc en un échange de données entre 2 parties. Au mieux l'infrastructure permettant cela est déjà en place, au pire il faut ajouter de nouveaux composants dans le système (le messaging par exemple).

###### La phase de migration
Une fois le périmètre des services défini, et le découplage du code effectué, on peut migrer une partie du code dans un service externe et autonome : un microservice. Les premiers sont en général simples à faire, et c'est là que la chose est insidieuse : ce n'est qu'une fois bien avancé, que l'on se rend compte des erreurs faites sur la route, et le coût de rectification est en général élevé.

Les principales choses auxquelles penser sont décrites ci-dessous.

#### L'isolation des données
Le premier problème que l'on rencontre est en général l'isolation des données. Pour que le service soit autonome, il faut qu'il soit seul maitre des ses données. Cela implique que d'autres parties de l'application ne doivent pas pouvoir lire ou modifier ses données, mais aussi bien entendu des systèmes externes (une requête manuelle ou automatique faite par une personne extérieure à l'équipe est considérée comme un système externe).

Si ce n'est pas le cas, alors comment être sûr que la modification d'un format de données ne va pas avoir un impact latent sur un autre système ? Il faut donc exposer la donnée autrement (là encore, en général via le protocole HTTP ou le messaging), et définir un contrat entre notre service et l'extérieur. Notre modèle de données peut alors évoluer à sa guise, en fonction des besoins, tant que le contrat défini n'est pas rompu.

C'est à ce niveau qu'est le second challenge : au lieu d'avoir un couplage local (en général validé par le compilateur), on se retrouve à devoir maintenir des contrats avec l'extérieur, donc à devoir les valider et les tester en permanence. Cela se fait via des outils à mettre en place, et des tests supplémentaires à écrire.

#### Le déploiement des microservices
Lorsque l'on a 1 ou 2 ou 5 microservices, rien de très compliqué pour les déployer. En plus, si le travail est bien fait, ils sont indépendants, et donc ne nécessitent pas une orchestration de la mise en production (synchronisation entre plusieurs MEP pour ne rien casser).

Cependant, au bout d'un moment, leur nombre augmente, et mécaniquement plusieurs autres choses aussi :
 * le temps de build global (checkout, compiliation, tests divers, packaging, déploiement)
 * les resources utilisées (dans la majorité des techno, chaque microservice a un coût d'entrée en termes de ressources)
 * le nombre de personnes nécessaire pour les opérer
 * la latence (voir ci-dessous)
 * etc.
 
L'adage "diviser pour mieux régner" implique ici de déplacer un problème de couplage de code (problème de dev) sur une problématique d'ops (le déploiement). Et donc, partir dans du microservice dans une culture ops un minimum solide est en général un suicide à petit feu. Et je ne parle même pas ici du monitoring de tous ces services, ou du debug dans un environnement distribué...

#### La latence
Mettons tout de suite de côté le contre-argument que les systèmes peuvent être orientés événements (event-driven) ou bien asynchrones (oui, c'est bien 2 choses différentes). C'est vrai, et dans ce cas la latence est un problème bien moindre. Mais ce n'est pas encore comme cela que la majorité des systèmes sont faits. La majorité des systèmes sont majoritairement fondamentalement synchrones, et vont voir leur latence exploser lors d'un passage sur une architecture microservice.

C'est assez simple à s'en rendre compte (quoi qu'il faut y penser !) : si au lieu de faire des appels au sain d'une même application (donc latence très faible, de l'ordre de la nano-seconde), vous le faites via un protocole comme HTTP (même avec des optimisations comme du protobuf ou parquet), on passe rapidement sur un ordre de grandeur de la milliseconde... au mieux. Rajoutez une couche de SSL entre vos services, et c'est encore une poignée de millisecondes de perdus à chaque appel. Ajoutez de l'authentification (déchiffrage de token par exemple), et rebelote.

Alors oui, on peut mettre en place une architecture pour éviter ces 2 choses là, mais on le fait généralement une fois que l'on a eu ces problèmes, et surtout si, encore une fois, on a une maturité d'ops suffisante pour gérer cela. Une nouvelle fois, soit la latence augmente, soit on déporte le problème sur les ops, là où n'y en avait pas avant.

#### Le monitoring
Dans tout système, on doit pouvoir savoir ce qu'il s'est passé quand quelque chose ne va pas. C'est à cela que sert la majorité du monitoring. "Suivre les chiffres" permet surtout de s'assurer que tout va bien.

Monitorer correctement une application n'est pas si simple. Alors en monitorer 10, 20, 50... Il ne s'agit ici plus de monitorer uniquement ses microservice, mais de monitorer les interactions entre tous les microservices : savoir qui discute avec qui, comment, pourquoi. Et si quelque chose ne tourne pas rond, remonter le fil de service en service jusqu'à trouver le coupable. Et ça... c'est compliqué dans un monde distribué. Plus de stacktrace pour vous montrer par quelles méthodes le code est passé. Il faut retrouver les appels HTTP avec leur payload, ou les messages échangés.

Bien entendu, il existe là encore des outils pour faire cela. Par exemple, [OpenTracing](https://opentracing.io){:target="_blank"}. Et c'est encore une fois quelque chose que nous n'avions pas besoin de faire avant, donc du temps, de l'énergie, de la maintenance en plus.

#### La jungle des technos
Pour terminer cette partie, il faut parler de la technologie. Comme évoqué au début de ce post, la technologie va vite, et les besoins et la hype autour de certains choses sont inéluctables. La question n'est pas de savoir *si* on va devoir évoluer, mais *quand*.

Les microservices, en isolant les bases de code de chaque service, rendent très simple de développer chaque service dans une technologie différente. Il est vrai que lorsque l'on veut faire quelque chose de nouveau, il faut se demander *quelle techno*, *quel paradigme* sont le plus adaptés au besoin.

Mais bien souvent on dérape vite, et les microservices se transforment en un gigantesque bac à sable de test de techno. *"C'est juste un microservice parmi d'autre, au pire si ça ne fonctionne pas on le refait !"*. Bah... non.

Avoir un ensemble hétérogène de technologies et de pratiques dans une entreprise rend compliqué l'apprentissage et la mobilité interne. Je ne dis pas qu'il faut l'éviter à tout prix. Je dis simplement qu'en général cela se fait sans vraiment de contrôle ou de stratégie, et les microservices réduisent encore un peu plus les garde-fous sur ces sujets, car les échanges entre service se font sur la base de contrats, indépendamment de la techno utilisée.

Et contrairement à ce que l'on pense, refaire un microservice (qui n'est pas forcément un nanoservice) dans une autre techno, n'est pas forcément trivial.

## Est-ce que les microservices sont un anti-pattern d'architecture
Ou dit autrement, *faut-il les éviter* ?

La réponse est claire : ***Non***.

L'architecture microservice n'est pas un mauvais choix d'architecture en tant que tel. Le mauvais choix serait de s'y lancer sans bien en comprendre les tenants et aboutissants. Elle règle un certain nombre de problèmes, mais en crée d'autres. Comme très souvent en informatique, il s'agit d'un choix à faire (trade-off en anglais).

Le ton ironique utilisé à de multiples reprises vise à mettre l'accent sur des choses que l'on pense naïvement bonnes au premiers abords (et j'ai commencé par avouer y être moi-même tombé il y a quelques années), mais qui ont des conséquences importantes. J'espère au moins que cela vous fera réfléchir avant de vous y lancer.

Alors, quand faire du microservice ? Déjà, ce n'est pas forcément un choix binaire. Ce n'est pas soit *TOUT* en microservice, soit *RIEN*. On peut très bien faire 2 ou 3 microservices qui cohabitent avec un monolithe (mais un monolithe bien foutu !). Si l'on a besoin de scaler une petite partie de l'application, d'utiliser une techno particulière pour des raisons techniques, juridique, business, etc., ou bien de séparer la base de code du reste pour une bonne raison, alors l'architecture microservice est *peut-être* adaptée.

Dans ce cas, il reste à se poser la question suivante : *Est-ce que les bénéfices seront supérieurs au coût investi ?*. Nous avons vu plus haut que pour fonctionner correctement, un architecture microservice à besoin de plusieurs choses :
 * un découpage correct (= du temps)
 * une isolation des données (= de l'expertise dev)
 * un déploiement rôdé (= de l'expertise ops)
 * de monitoring (= de l'expertise ops)
 * d'infrastructure (load balancing, messaging, tracing, resillience, orchestrateur, etc.)
 
Alors oui, si votre maturité sur ces sujets est assez élevée, vous en tirerez surement des bénéfices. Si non, ce n'est pas grave, il y a d'autres solutions.

## Une autre solution ?
Si vous pensiez échapper au fameux terme de ***DDD*** (*Domain Driven Design*), alors vous avez eu tord :)

Au début de l'article, j'indique que la complexité est selon moi le plus gros problème des applications. Les autres problèmes ajoutent de l'huile sur le feu, mais ne me semble pas aussi handicapant. Beaucoup d'équipe se sont tournées vers les microservices en pensant réduire leur complexité métier en découpant leur logique en plusieurs services. L'idée est bonne, mais il y a 2 choses à ne pas oublier : savoir découper correctement, et accepter une augmentation de la complexité d'infrastructure en échange. Et c'est là que beaucoup d'entreprise déchantent, car elles n'avaient pas prévu ce palier.

Une autre solution est donc... de rester sur un monolithe. Oui, en 2022, on peut encore faire des monolithes ! Mais pas n'importe comment. Un monolithe bien pensé, sans toute la complexité d'infrastructure qu'amènent les microservices. Et pour cela, quoi de mieux que d'utiliser le ***DDD***.

Car oui, on en revient toujours à ça. La complexité. Comment la réduire ? Bien comprendre son domaine, et créer des sous-domaines adaptés. L'important n'est pas comment ils communiquent (par API Web, messages, RPC, etc.), mais bien de comment ils sont découpés. On peut donc pa,rfaitement les mettre dans un monolithe, et il sera toujours temps de créer des microservices le moment venu, où non seulement nous serons prêt à traiter la complexité qu'ils apportent, mais aussi et surtout lorsque nous aurons de vrais problèmes que les microservices peut adresser.

En gros, quand vous vous lancer dans un nouveau projet, ne partez pas en microservices par défaut sous prétexte qu'*"on est en 2022 quand même !"*.

## Conclusion
Pour finir cet article qui était plus long que prévu (et qui pourrait l'être bien plus), retenez une chose : les microservices coûtent cher, en terme de temps, d'argent, et de personnes. Ce n'est pas un choix idiot, mais ça ne doit pas être un choix par défaut ou par ignorance. Ok, c'est à la mode. Et alors ?! 

Si vous voulez faire des microservices, commencez par bien comprendre et maitriser le ***DDD***. On ne peut pas faire de microservices correctement sans avoir une vision claire des frontières entre les services. C'est une tâche complexe qui nécessite de l'expertise.

Par contre, on peut faire du ***DDD*** sans forcément faire de microservices. Et il ne faut pas en avoir honte.

A bon entendeur...


