# Beta x Rails

![image](https://user-images.githubusercontent.com/107635/182360512-9fd4be19-bdf9-4a02-8f9c-94abf94e0164.png)


## Introduction

Ce repo est un kit de démarrage basé sur Ruby on Rails 7 avec le
[DSFR](https://www.systeme-de-design.gouv.fr/), notre [librairie de
composants DSFR](https://github.com/betagouv/dsfr-view-components)
ansi que certains outils choisis :

* RSpec comme framework de tests ;
* Cucumber et Capybara pour les tests BDD ;
* Rubocop (RSpec et Rails) pour le linting.

## Démarrage

### Avec Docker

```shell
docker-compose up
```

Attention ! Comme on miroite notre arborescence de fichiers locale sur
celle de Docker, une fois le volume monté il faut s'assurer que les
packages NPM sont aussi installés en local, sinon on monte un dossier
vide par dessus le `node_modules` de Docker qui lui est installé
pendant la construction de l'image.

Donc la première fois, après `docker-compose up` :

```shell
npm i # sur la machine hôte, pas dans Docker
```

### En local

```
bundle
npm i
bundle exec rails s
```
