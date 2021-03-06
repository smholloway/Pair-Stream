# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

shayne = User.create( 
  :email                  => 'shayne@gmail.com',
  :first                  => 'shayne',
  :last                   => 'czyzewski',
  :password               => 'password',
  :password_confirmation  => 'password'
)

ramie = User.create( 
  :email                  => 'ramie@gmail.com',
  :first                  => 'ramie',
  :last                   => 'gibson',
  :password               => 'password',
  :password_confirmation  => 'password'
)

stream = Stream.new
stream.save
stream.users << shayne
stream.users << ramie
