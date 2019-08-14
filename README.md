#BGG-lister
https://bgg-lister-client.herokuapp.com/
# README
* Ruby ruby 2.5.5p157
##### System dependencies
- bcrypt, ~> 3.1.7
- jwt
- HTTParty
- nokogiri
- rack-cors
* Configuration
- API

- the db is used to fetch info from the third party api BoardgameGeek.  the gems nokogiri and HTTParty are need for this purpose.

- we then can save user generated lists to the db storing the bgg gameid for future lookups.
