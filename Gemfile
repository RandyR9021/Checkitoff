source 'https://rubygems.org'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
group :development do
	gem 'sqlite3'
	gem 'better_errors'
	gem 'annotate'
end
group :production do
	gem 'pg'
	gem 'rails_12factor'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'binding_of_caller'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'puma'
gem 'faker'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'devise'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end