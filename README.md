# Book Explorer

A simple application to import a csv file and generate data based on the content of the CSV.
The Book model consist of following attributes

This README would normally document whatever steps are necessary to get the
application up and running.

| Columns       | Data Type      |
| ------------- |:--------------:|
| string        | title          |
| string        | author         |
| date          | date_published |
| string        | unique_code    |
| string        | publisher      |

Sample of the csv file can be found in the root dir 'book1.csv', 'book2.csv'

## Provide Env variables

Create a file with name 'application.yml' and fill up the values as mentioned below

```ruby
AWS_ACCESS_KEY_ID: "xxxxxxx"
AWS_SECRET_ACCESS_KEY: "xxxxxxx/xxxxWgxxx"
AWS_REGION: "region1"
S3_BUCKET_NAME: "bucketname"
username: sql_user_name
password: sql_root_password
```

## Load Gems and create migration

```ruby
  bundle install
  rake db:create
  rake db:migrate
```
