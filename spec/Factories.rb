# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.id         "2"
  user.name       "Bruno SÃ¡nchez-Andrade NuÃ±o"
  user.email      "facebook@brunosan.eu"
  user.uid        "239200025"
  user.created_at "2010-12-26 21:22:08.022012"
end