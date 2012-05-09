# Wordpress Import Script for SchnitzelPress

## Important
This is highly unstable, but that shouldn't be a problem since this also applies to SchnitzelPress ;-)


## Updates
Markdown support now works thanks to [DownmarkIt](https://github.com/cousine/downmark_it).

I adjusted the script slightly so that it now works with ruby 1.9.1 and the latest Schnitzelpress 0.2.0.

It's still a little experimental though, and you should check your imported postings for missing / bugged text or HTML code.

If you're getting errors, please contact me - I'd be happy if we could improve the script together.


## Usage
1. Export your Wordpress Articles (in WP -> Tools -> Export)
2. Open wp-import.rb with a text editor of your choice
3. Change the source variable to your Wordpress.xml file name and enter the database location
4. If you want to use the local db I suggest you use https://github.com/pedro/heroku-mongo-sync for syncing between your local db and the heroku db
5. run 'ruby wp-parser.rb'
6. If errors occur, please try to install all of the needed gems - e.g. hpricot and schnitzelpress (sudo gem install $gemname)
7. When using heroku mongo sync, don't forget to push your local db to heroku

## Specs
This worked with WP 3.x, ruby 1.8.7, mongo 1.5.0, and schnitzelpress 0.1.1
This also worked with ruby 1.9.1, mongo 1.5.x and schnitzelpress 0.2.0


## License
CC BY-NC-SA

