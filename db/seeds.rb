# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create!({:email => "jloviedos@clinicaelmilagro.com", :role_user => "Admin", :password => "tacos123.", :password_confirmation => "tacos123." })
Person.create( :user_id => user.id , :name => 'Jose' , :last_name => 'Oviedo',:sex=>'Male', :birthday=>'19-04-1988',:cell_number=>'3004273468',:city=>'Barranquilla',:address=>'Calle 45B # 8A - 33',:status=>'Activo',:type_person=>'Admin')
