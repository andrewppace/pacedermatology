# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'yaml'
Author.create({name: "Aaron Pace"})
Author.create({name: "Andrew Pace"})
Author.create({name: "Becky Coen"})


YAML::load(File.open("/home/andrew/pacedermatology/db/wp_posts.yml")).each do |blog|
  blog[:author_id] = Author.first.id
  Post.create(blog)
end

