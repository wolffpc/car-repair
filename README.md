# Car Repair

Car Repair is a simple Rails application that allows a user to make a maintenance request for their vehicle.

## Prerequisites

Before you begin, ensure you have met the following requirements:
* You have `ruby` on your system (developed using 2.7.1).
```
ruby -v
```
* `rails` is installed
```
rails -v
```
* `Yarn` is installed
```
yarn -v
```

## Installing Car Repair

To setup Car Repair locally, follow these steps:

Download or clone the repository and navigate to the directory

Install dependencies:
```
bundle install
```
```
yarn install
```

Setup the database:
```
rails db:migrate
```

Run the development server:
```
rails s
```

To send emails you will need to setup the email server settings in `config/environments/development.rb`. For this project I used my gmail account to send emails and I've left the basic settings in place, you will need to provide a gmail username and password if you'd like to do the same (if you have 2FA turned on you will need to setup an application password).

## Improvements

I reached a "good not perfect" place with this project where the requirements were being met but I still had plenty of improvements in mind. A few key ones are listed below:

* Additional tests
* Additional form field validation - datetime is particularly rough, a proper datetime picker would be essential
* Better error handling and error messaging

## Contact

If you want to contact me you can reach me at <wolffpc1@gmail.com>.