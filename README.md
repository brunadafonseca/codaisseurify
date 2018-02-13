# Codaisseurify

This was the first individual assignment for Codaisseur Academy.

![home page](http://bit.ly/2o5pHB9)

![artists page](http://bit.ly/2o3pvCL)

### User stories for this project:

+ As a user I can to add, edit, delete songs from an artist.

+ As a user I can add photos to an artists's page

+ As a user I can to delete all songs from an artists at once (because why not)

+ As a user I can edit or delete artists

+ As a user I can view a list of artists

#### Other requirements:

+ Nested routes

+ [Cloudinary](https://cloudinary.com/) and [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) for the images upload


Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:brunadafonseca/codaisseurify.git
cd codaisseurify
bundle install
rails db:create db:migrate db:seed
rails server
```
