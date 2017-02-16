# Blogging App

This is a Ruby on Rails blogging app. Your task is to build it out, making the tests pass as you go along. There are multiple levels of completion, each increasing in complexity and building on the robustness of the app. Get as far as you can.

## Dependencies:
* [Ruby >= 2.3](https://www.ruby-lang.org/en/downloads/)
* [Rails 5.0.1](https://github.com/rails/rails)
* [Postgres >= 9.5](https://postgresapp.com)

## Competency Goals:

#### Baseline:
Make the tests pass. In order to do this you must create the models, their associations and any service objects you might need to make the code clean. We want to see a single table inheritance on the blog media. Video/Images share behavior and data, but are separate entities.

Create/write models, and associations between:
* users
* blog posts
* blog comments
* blog media (video/image) [hint](http://edgeapi.rubyonrails.org/classes/ActiveRecord/Enum.html)

#### Above and Beyond:

Implement the tag class
* should be polymorphic
* a blog post, comment, or attachment could be tagged

Create controllers for:
* blog posts
* blog comments
* post media (video/image)

Create views for:
* index, show for blog posts
* blog:index should feature metadata, such as number of comments, any kind of media attached, etc.
* blog:show should be a blog post and its attributes, along with comments and any media associated with the post.
* If you get this far, we’ve included the gems react_rails and haml. Feel free to use plain .erb templates, or add any front-end framework, CSS/JS or otherwise. Show us what you can do.

#### Surprise and Delight:
* Allow for nested comments
* Capybara tests
* Robust test coverage
* Service Objects
* Code thats easy to reason about
* Code thats easy to change
