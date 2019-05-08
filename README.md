## Instatalk

### Description

The web application for simple chat talking. You can create chat rooms with your friends and made talking in your pleasure.

Action Cable and Websockets are involved in application.

Language:  Ruby  version 2.5.3

Web-framework:  Ruby on Rails  version 5.2.2

Database development: Sqlite3

Database production: PostgreSQL / Redis

## To Start App

1. Download or clone the "Instatalk" repository

2. Get your terminal window into "Instatalk" derictory

3. Use bundle

``` 
$ bundle install 
```

4. Run database migraition

``` 
$ bundle exec rails db:create 

$ bundle exec rails db:migrate 
```

5. Start server

```
$ bundle exec rails s
```
