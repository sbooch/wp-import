# Schnitzelpress Wordpress Import
# author: Sebastian Booch (@bashdy)
# email: mail@sbooch.de
# www.schnitzelpress.org

# 1.8.7 compability
require 'rubygems'

# needed
require 'rss/2.0'
require 'rss/content'
require 'schnitzelpress'
require './downmark_it.rb'



# Enter the name of your exported Wordpress articles here (in WP, go to Tools - Export)
# must be in the same folder as this script!
source = "wordpress.xml"

# pass your heroku uri or a the local mongodb here
Schnitzelpress.mongo_uri=('mongodb://localhost/sbooch')

content = ""

open(source) do |s| content = s.read end
rss = RSS::Parser.parse(content, false)

i = 0

while i < rss.items.size

slugs = [ rss.items[i].link[rss.items[i].link.rindex('/', rss.items[i].link.rindex('/')-1)..-1].chomp('/')[1..-1] ]

	Schnitzelpress::Post::create(
		:title => rss.items[i].title,
		:body => DownmarkIt.to_markdown(rss.items[i].content_encoded),
		:published_at => rss.items[i].pubDate,
		:read_more => nil,
		:status => :published,
		:link => nil,
		:disqus => false,
		:slugs => slugs
		)

	i += 1
end
