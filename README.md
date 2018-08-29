# README

Download the repository and once it's done navigate into the folder and execute
`bundle install`
 and then
 
 `rails s`
 
 You can use the api like this:
 
 `localhost:3000/get_location/?query=casa%20mate`
 
BEFORE to start to use the api, you need to set-up your environment variable with the GOOGLE API KEY to use the third-part API
 [https://developers.google.com/maps/documentation/geocoding/intro]

You can do it running this command:

`export API_KEY=Y0ur4P1K3yFr0mGo0gle`

You have a query parameter which should be the string that you are looking for.
The result should look like this:

`{"lat": 33.927172,
  "lng": -84.3487}
`
