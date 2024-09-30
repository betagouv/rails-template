# Beta x Rails

![Capture d’écran 2024-07-09 à 12 02 42](https://github.com/betagouv/rails-template/assets/107635/51592c9e-3f74-4384-9561-354c7085b16b)


## Introduction

Ce repo est un kit de démarrage basé sur Ruby on Rails 7 avec le
[DSFR](https://www.systeme-de-design.gouv.fr/), notre [librairie de
composants DSFR](https://github.com/betagouv/dsfr-view-components)
ansi que certains outils choisis :

* RSpec comme framework de tests ;
* Cucumber et Capybara pour les tests BDD ;
* Rubocop (RSpec et Rails) pour le linting.

La base de données est configurée avec PostgreSQL.

## Démarrage

```shell
docker-compose up
```

## Environnement

Tout l'environnement est configuré pour et depuis Docker. Des
commandes utiles sont fournies dans le [Makefile](./Makefile).

## Intégration continue

Une cinématique GitHub Action est founie qui lance :

- le linting ;
- les tests unitaires ;
- les tests d'intégration.

Cette cinématique commence d'abord par construire l'image Docker
qu'elle transmet ensuite aux trois étapes ci-dessus, ce qui évite de
répéter trois fois l'installation et la configuration du projet sans
sacrifier le parallèlisme de ces étapes.
