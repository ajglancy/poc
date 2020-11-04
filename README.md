# required tools
 
 * terraform 13.x
 * kitchen-terraform
 * rspec
 * awsspec
 * ruby
 * bundler

 # how to run

install testing dependencies gems by running,

 `bundle install --path vendor/bundle`

next, kitchen converge the test scenario which spins up the resources in aws,

 `bundle exec kitchen converge`

then verify infrastructure components by running,

 `bundle exec kitchen verify`

once testing is done destroy the resources,

 `bundle exec kitchen destroy`
 
 # troubleshooting
 
 If encountering a key error upon initial converge, please run a second time as dependant infrastructue will now be in place.
