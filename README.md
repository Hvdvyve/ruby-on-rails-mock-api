# A Ruby on Rails Api (mock + Postgres)

This api is a deliverable for the Trending topics project. Gitpod was used for the setup & development. There are two versions:
v1: A mock api
-All api calls give back hard coded json.

v2: An api connected to the PostgressDb
-There are seeders in db/seeds.rb with some mock data.


## Setup project

### Use the Gitpod workspace
Open this link to a Gitpod workspace: https://gitpod.io/start/#lime-crawdad-jna6ozg7 
The server is running in the workspace now (the init has been done in .gitpod.yml).
You can connect to the workspace from your host trough a remote connection, for insance with VS code: Click on the hamburger menu on the upper left corner of the workspace and click 'Gitpod: Open is VS Code'.

### Do this when changing stuff in migrations and/ or seeders 
rake db:migrate:reset
rake db:seed
