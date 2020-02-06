# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all
a1 = Appointment.create(time:"12:30:00", timeTo:"5:30:00", aside:"pm", asideTo:"pm", date:"2020-02-03", title:"Testing", description:"Testing Description", address:"1 Market Street, Sydney")
a2 = Appointment.create(time:"11:45:52", timeTo:"5:45:00", aside:"am", asideTo:"pm", date:"2020-02-03", title:"Testing", description:"Testing Description", address:"25 Kent Street, Sydney")

Note.destroy_all
n1 = Note.create(message:"testing")
n2 = Note.create(message:"testing2")

User.destroy_all
u1 = User.create(name:"test", email:"testing@test.com", password:"chicken", admin:false, image:"")
u2 = User.create(name:"test", email:"testing1@test.com", password:"chicken", admin:false, image:"")
u3 = User.create(name:"test", email:"testing2@test.com", password:"chicken", admin:false, image:"")
u4 = User.create(name:"test", email:"testing3@test.com", password:"chicken", admin:false, image:"")
u5 = User.create(name:"test", email:"testing4@test.com", password:"chicken", admin:false, image:"")

u1.appointments << a1
a1.notes << n1
a2.notes << n2

# User.destroy_all
# User.create(name:"test", email:"testing@test.com", password:"chicken", admin:false)
