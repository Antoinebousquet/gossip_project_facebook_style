# THE GOSSIP PROJECT : PIMP-ON !

## The Hacking Project - Bootcamp Fullstack Web
### Semaine 6, jour 4.

> 


This app is a simplified blogging mockup.


***

## Fonctionnalités présentes

This list will be updated later. App is getting build.

***

## Installation
Cloner le repository : 
~~~bash
$ git clone https://github.com/gaael/thp-06-04-gossip-project-v4.git
~~~
Ou télécharger sa version compressée puis l'extraire.

Se placer dans le dossier `thp-06-04-gossip-project-v4-master`. Installer les gemmes nécessaires (via *Bundler*)
~~~bash
$ cd path/to/thp-06-04-gossip-project-v4-master
$ bundle install
~~~


Construire la BDD
~~~bash
$ rails db:create db:migrate
~~~


Remplir la BDD à partir de `seeds.rb`
~~~bash
$ rails db:seed
~~~


Lancer le `serveur rails`
~~~bash
$ rails server
~~~


Visiter le site en local :\
[localhost sur le port 3000](http://localhost:3000/)

***

## Configuration requise
Version de **Rails** :
~~~bash
$ rails-v
Rails 5.2.3
~~~

Version de **Ruby** :
~~~bash
$ ruby -v
ruby 2.5.1
~~~

Version de **Bundler** :
~~~bash
$ bundle -v
Bundler version 2.0.2
~~~

Gemmes utilisées (source : *Gemfile*) :\
Gemmes ajoutées au **Gemfile** de Rails :
~~~ruby
group :added_gems do
  # Enables 'realistic' and 'effortless' seed
  gem 'faker'
  # Displays nice tables in Rails Console
  gem 'table_print'
end
~~~


***

## Testing

None yet.

***

## Historique des versions

* version 4.00 : repo init

***

## Credits
Les ressources de [The Hacking Project](https://www.thehackingproject.org/)\
Les [guides de Rails](https://guides.rubyonrails.org/index.html)


## Meta
Gaël Dubois - [Twitter](https://twitter.com/GalDUBOIS1) - [GitHub](https://github.com/gaael/)\
Distribué sous license GNU-GPLv3. Voir `LICENCE.txt` pour plus d'informations.