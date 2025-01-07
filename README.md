# Beta x Rails

![./screenshot.png](./screenshot.png)


## Introduction

Ce repo est un kit de démarrage basé sur Ruby on Rails 8 avec le
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

## Déploiement

### Scalingo

L'application a besoin des `node_modules` pour fonctionner car le DSFR
est un paquet NPM. Pour garantir leur installation, assurez-vous
d'indiquer à Scalingo que vous avez besoin du buildpack NodeJS en plus
du buildpack Ruby avec un fichier `.buildpacks` à la racine du projet
contenant :

```
https://github.com/Scalingo/nodejs-buildpack.git
https://github.com/Scalingo/ruby-buildpack.git
```
