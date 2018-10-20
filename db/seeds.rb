# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employees = Employee.create([{name: 'Ferdi Armagan', email: "ferdiarmgan@web.de"},
                             {name: 'Travis Scott', email: "travis@travisscott.com"},
                             {name: 'Klaus Kleber', email: "klauskleber@gmail.com"},
                             {name: 'Gundula Gause', email: "gundulagause@gmail.com"},
                            ])
projects = Project.create([{name: 'PhotoEditor SDK', employee_id: 1},
                           {name: 'Employour', employee_id: 2},
                           {name: 'Ma-Tea', employee_id: 2},
                           {name: 'Welect', employee_id: 4},
                            ])
