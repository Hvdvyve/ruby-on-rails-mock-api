# A Ruby on Rails Api (mock + Postgres)

This api is a deliverable for the Trending topics project. Gitpod was used for the setup & development. There are two versions:
v1: A mock api
-All api calls give back hard coded json.

v2: An api connected to the PostgressDb
-There are seeders in db/seeds.rb with some mock data.


## Deploy project

### Use Gitpod

There is a .gitpod.yml file that takes care of deployment in this case.
Have the Gitpod extention on your browser:
Any Chromium-based browser: https://chrome.google.com/webstore/detail/gitpod-always-ready-to-co/dodmmooeoklaejobgleioelladacbeki
Firefox: https://addons.mozilla.org/nl/firefox/addon/gitpod/

Go to the github repo https://github.com/Hvdvyve/reservations-backend-golang and open a Gitpod workspace using the Gitpod extention (green button Gitpod).
The server is running on localhost port 3000.

### Locally

Have Ruby 2.7.3 or higher installed.
After pulling the files (*see .gitpod.yml file) do the following commands:
bundle install
yarn install
rails server -b 0.0.0.0
rake db:create
rake db:seed

### Do this when changing stuff in migrations and/ or seeders 
rake db:migrate:reset
rake db:seed
