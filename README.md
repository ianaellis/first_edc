== EDC Trial : VetPALS

Author: Ian Ellis
Company: Spectrum Research

This project is the first undertaking by Spectrum Research to create an 
Electronic Data Capture (EDC) website, for the purpose of hosting our 
up-coming study in coordination with VetPALS. The purpose of the website 
will be to allow for the creation, storage, manipulation, and review of all 
subject enrolled into this study. The information will be collected for 
these subject will be collected from several different locations.


== Console

The console is a Ruby shell, which allows you to interact with your
application's domain model. Here you'll have all parts of the application
configured, just like it is when the application is running. You can inspect
domain models, change values, and save to the database. Starting the script
without arguments will launch it in the development environment.

To start the console, run <tt>rails console</tt> from the application
directory.

Options:

* Passing the <tt>-s, --sandbox</tt> argument will rollback any modifications
  made to the database.
* Passing an environment name as an argument will load the corresponding
  environment. Example: <tt>rails console production</tt>.

To reload your controllers and models after launching the console run
<tt>reload!</tt>

More information about irb can be found at:
link:http://www.rubycentral.org/pickaxe/irb.html


== dbconsole

You can go to the command line of your database directly through <tt>rails
dbconsole</tt>. You would be connected to the database with the credentials
defined in database.yml. Starting the script without arguments will connect you
to the development database. Passing an argument will connect you to a different
database, like <tt>rails dbconsole production</tt>. Currently works for MySQL,
PostgreSQL and SQLite 3.

== Description of Contents

The default directory structure of a generated Ruby on Rails application:

  |-- app
  |   |-- assets
  |       |-- images
  |       |-- javascripts
  |       `-- stylesheets
  |   |-- controllers
  |   |-- helpers
  |   |-- mailers
  |   |-- models
  |   `-- views
  |       `-- layouts
  |-- config
  |   |-- environments
  |   |-- initializers
  |   `-- locales
  |-- db
  |-- doc
  |-- lib
  |   `-- tasks
  |-- log
  |-- public
  |-- script
  |-- test
  |   |-- fixtures
  |   |-- functional
  |   |-- integration
  |   |-- performance
  |   `-- unit
  |-- tmp
  |   |-- cache
  |   |-- pids
  |   |-- sessions
  |   `-- sockets
  `-- vendor
      |-- assets
          `-- stylesheets
      `-- plugins

app
  Holds all the code that's specific to this particular application.

app/assets
  Contains subdirectories for images, stylesheets, and JavaScript files.

app/controllers
  Holds controllers that should be named like weblogs_controller.rb for
  automated URL mapping. All controllers should descend from
  ApplicationController which itself descends from ActionController::Base.

app/models
  Holds models that should be named like post.rb. Models descend from
  ActiveRecord::Base by default.

app/views
  Holds the template files for the view that should be named like
  weblogs/index.html.erb for the WeblogsController#index action. All views use
  eRuby syntax by default.

app/views/layouts
  Holds the template files for layouts to be used with views. This models the
  common header/footer method of wrapping views. In your views, define a layout
  using the <tt>layout :default</tt> and create a file named default.html.erb.
  Inside default.html.erb, call <% yield %> to render the view using this
  layout.

app/helpers
  Holds view helpers that should be named like weblogs_helper.rb. These are
  generated for you automatically when using generators for controllers.
  Helpers can be used to wrap functionality for your views into methods.

config
  Configuration files for the Rails environment, the routing map, the database,
  and other dependencies.

db
  Contains the database schema in schema.rb. db/migrate contains all the
  sequence of Migrations for your schema.

doc
  This directory is where your application documentation will be stored when
  generated using <tt>rake doc:app</tt>

lib
  Application specific libraries. Basically, any kind of custom code that
  doesn't belong under controllers, models, or helpers. This directory is in
  the load path.

public
  The directory available for the web server. Also contains the dispatchers and the
  default HTML files. This should be set as the DOCUMENT_ROOT of your web
  server.

script
  Helper scripts for automation and generation.

test
  Unit and functional tests along with fixtures. When using the rails generate
  command, template test files will be generated for you and placed in this
  directory.

vendor
  External libraries that the application depends on. Also includes the plugins
  subdirectory. If the app has frozen rails, those gems also go here, under
  vendor/rails/. This directory is in the load path.
