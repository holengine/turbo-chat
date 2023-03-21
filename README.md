<p align="center">
  <img src="https://i.imgur.com/RwMTIdx.png" style="image-rendering: pixelated;" "alt="logo" width="20%"/>
</p>
<h1 align="center">
  Chat
  <img src="https://img.shields.io/badge/Ruby-3.1.2-brightgreen" style="image-rendering: pixelated;" "alt="logo" width="8%"/>
  <img src="https://img.shields.io/badge/Rails-7.0.4-blue" style="image-rendering: pixelated;" "alt="logo" width="8%"/>
</h1>

## Introduction

Fast chat application with live users tracking to communicate with friends. No need to register, just open app, create room and invite friends!

### Instructions


```bash
$ bundle
$ rails db:create
$ rails db:migrate
$ rails s
```

### Database in production
In the `production` environment, you must specify the database login and password in the environment variables `DATABASE_NAME`, `DATABASE_USERNAME` and `DATABASE_PASSWORD` or specify explicitly in `config/database.yml`:

```
production:
  <<: *default
  database: #Your database name
  username: #Your database username
  password: #Your database password
```
