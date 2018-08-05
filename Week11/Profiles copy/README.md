# Sparta Profile Generator

This system generates PDF profiles from information entered by the Spartans.

## Installation and Startup

Ensure that you have an instance of PostgresSQL running locally

Clone the repo:

```
git clone git@github.com:spartaglobal/Profiles.git
cd Profiles
```

### Create the database

```
rake db:create
rake db:migrate
```

### Start the app

```
rails s
```

### View the application

```
localhost:3000
```

You will need a valid IMC login to continue