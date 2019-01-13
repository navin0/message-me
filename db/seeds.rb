# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
  ActiveRecord::Base.connection.execute('DELETE FROM users;UPDATE "sqlite_sequence" SET "seq" = 0 WHERE "name" = "users"')
  ActiveRecord::Base.connection.execute('DELETE FROM emails;UPDATE "sqlite_sequence" SET "seq" = 0 WHERE "name" = "emails"')
  ActiveRecord::Base.connection.execute('DELETE FROM messages;UPDATE "sqlite_sequence" SET "seq" = 0 WHERE "name" = "messages"')
end

if Rails.env.production?
  ActiveRecord::Base.connection.execute('TRUNCATE users; ALTER SEQUENCE users_id_seq RESTART WITH 1;')
  ActiveRecord::Base.connection.execute('TRUNCATE emails; ALTER SEQUENCE emails_id_seq RESTART WITH 1;')
  ActiveRecord::Base.connection.execute('TRUNCATE messages; ALTER SEQUENCE messages_id_seq RESTART WITH 1;')
end
user1 = User.create(username: "joe", password: "password" )
email1 = Email.create(email: "joedimaggio@example.net", user: user1, primary: true, confirmed: true)
user2 = User.create(username: "herb", password: "password" )
email2 = Email.create(email: "herbmontoya@example.net", user: user2, primary: true, confirmed: true)
user3 = User.create(username: "vanbueren", password: "password" )
email3 = Email.create(email: "vanbueren@example.net", user: user3, primary: true, confirmed: true)
user4 = User.create(username: "leo", password: "password" )
email4 = Email.create(email: "leonardo@example.net", user: user4, primary: true, confirmed: true)
user5 = User.create(username: "sammy", password: "password" )
email5 = Email.create(email: "sammy@example.net", user: user5, primary: true, confirmed: true)
user6 = User.create(username: "becky", password: "password" )
email6 = Email.create(email: "becky@example.net", user: user6, primary: true, confirmed: true)
user7 = User.create(username: "talia", password: "password" )
email7 = Email.create(email: "talia@example.net", user: user7, primary: true, confirmed: true)
user8 = User.create(username: "spencer", password: "password" )
email8 = Email.create(email: "spencer@example.net", user: user8, primary: true, confirmed: true)
user9 = User.create(username: "gonzo", password: "password" )
email9 = Email.create(email: "gonzales@example.net", user: user9, primary: true, confirmed: true)
user10 = User.create(username: "victor", password: "password" )
email10 = Email.create(email: "victor@example.net", user: user10, primary: true, confirmed: true)

Message.create(body: "Hello, everyone!", user: user7)
Message.create(body: "What's up!", user: user1)
Message.create(body: "Heyyyy, folks!", user: user3)
Message.create(body: "Hola!", user: user2)
Message.create(body: "What's poppin'", user: user4)
Message.create(body: "Howdy!", user: user3)
Message.create(body: "Well, this is a sprightly bunch!", user: user5)
Message.create(body: "Hey, hey, heyyyyyy, people!", user: user6)
Message.create(body: "Good to see everyone here", user: user8)
Message.create(body: "Hola, mis amigos!", user: user9)
Message.create(body: "What's cookin'?", user: user10)