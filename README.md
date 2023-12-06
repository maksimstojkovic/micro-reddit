# Micro-Reddit

This is a simple Rails application which demonstrates models, associations and field validations.

The database schema has the following models:

```
User:
username:string
email:string
password:string

has_many posts
has_many comments

Post:
title:string
link:string
body:string

belongs_to user
has_many comments

Comment:
body:string

belongs_to user
belongs_to post
```