CarePal
====

## Setup CarePal application in local

### Clone This Repo

	git clone git@github.com:hbchiraghp/CarePal.git && cd CarePal
 

### Change the branch

	git checkout hb-aravind

### Double-check your RVM installation
please check the [RVM integration page](https://rvm.io/integration) for steps needed for your terminal or environment.

### Install the ruby using rvm

    rvm insall 2.2.1

### Install the dependencies

    bundle install

### Configure config/database.yml as per your local credentials

	host: xxxxx
	username: xxxxx
	password: xxxxx

### Configure SMTP settings in config/application.rb 

	config.action_mailer.smtp_settings = {
		:address              => "smtp.gmail.com",
		:port                 => 587,
		:domain               => "gmail.com",
		:user_name            => "xyz@gmail.com",
		:password             => "yourpassword",
		:authentication       => :plain,
		:enable_starttls_auto => true
	}
	

### Run the Migrations for development and test environment

    rake db:migrate
    rake db:migrate RAILS_ENV=test
    
### Run the test cases with below command

	bundle exec rspec spec

### Start the server in development environment
	
	rails s

