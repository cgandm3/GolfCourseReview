# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = Golfcourse.create([
      {name: "Alondra", state: "CA", county: "Los Angeles", city: "Lawndale"},
      {name: "Trump National", state: "CA", county: "Los Angeles", city: "Rancho Palos Verdes"},
      {name: "Lakewood", state: "CA", county: "Los Angeles", city: "Long Beach"},
      {name: "Pebble Beach", state: "CA", county: "Monterey", city: "Carmel"},
      {name: "Twin Lakes", state: "MI", county: "Oakland", city: "Rochester Hills"},
      {name: "Lilac", state: "MI", county: "Monroe", city: "Monroe"},
      {name: "Riverview", state: "MI", county: "Wayne", city: "Riverview"}
    ])