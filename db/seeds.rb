# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ruby = Book.create(name: 'Eloquent Ruby', is_checked_out: false)
java = Book.create(name: 'Learning Java Servlets', is_checked_out: false)
csharp = Book.create(name: 'C# in .Net', is_checked_out: false)
python = Book.create(name: 'Python in nutshell',is_checked_out: false)
railstutorial = Book.create(name: 'Rails Tutorial', is_checked_out: false)
javascript = Book.create(name: 'JavaScript for Dummies', is_checked_out: false)

bharvi = Patron.create(name: 'Bharvi')
astrid = Patron.create(name: 'Astrid')
jordan = Patron.create(name: 'Jordan')
jared = Patron.create(name: 'Jared')
ben = Patron.create(name: 'Benjamin')
dwight = Patron.create(name: 'Dwight')
efrain = Patron.create(name: 'Efrain')
kevin = Patron.create(name: 'Kevin')
kirt = Patron.create(name: 'Kirt')
thanh = Patron.create(name: 'Thahn')
