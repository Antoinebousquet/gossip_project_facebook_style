# THE GOSSIP PROJECT : Facebook like

## The Hacking Project - Bootcamp Fullstack Web
### Semaine 6, jour 4.

***

## Installation
Cloner le repository : 
~~~bash
$ git clone https://github.com/Antoinebousquet/gossip_project_facebook_style
~~~
Ou télécharger sa version compressée puis l'extraire.

Installer les gemmes nécessaires (via *Bundler*)
~~~bash
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

## Credits
Les ressources de [The Hacking Project](https://www.thehackingproject.org/)\
Les [guides de Rails](https://guides.rubyonrails.org/index.html)
Gaël Dubois - [Twitter](https://twitter.com/GalDUBOIS1) - [GitHub](https://github.com/gaael/)\

## Meta
Distribué sous license GNU-GPLv3. Voir `LICENCE.txt` pour plus d'informations.