# Wordpress Import Script for SchnitzelPress

# LICENSE

[CC-BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/de/)

## Important
This is highly unstable, but that shouldn't be a problem since this also applies to SchnitzelPress ;-)
Sadly, Markdown parsing doesn't work at the moment, but this will be in the next version. I'm already working on it.


## Usage
1. Export your Wordpress Articles (in WP -> Tools -> Export)
2. Open wp-import.rb with a text editor of your choice
3. Change the source variable to your Wordpress.xml file name and enter the database location
4. If you want to use the local db I suggest you use https://github.com/pedro/heroku-mongo-sync for syncing between your local db and the heroku db
5. run 'ruby wp-parser.rb'
6. ?
7. profit

## Specs
This worked with WP 3.x, ruby 1.8.7, mongo 1.5.0, and schnitzelpress 0.1.1

