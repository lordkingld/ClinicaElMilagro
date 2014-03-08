# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create!({:email => "jloviedos@clinicaelmilagro.com", :role_user => "Admin", :password => "tacos123.", :password_confirmation => "tacos123." })
Person.create( :user_id => user.id , :name => 'Jose' , :last_name => 'Oviedo',:sex=>'Male', :birthday=>'19-04-1988',:cell_number=>'3004273468',:city=>'Barranquilla',:address=>'Calle 45B # 8A - 33',:status=>'Activo',:type_person=>'Admin')

user = User.create!({:email => "ldaza@clinicaelmilagro.com", :role_user => "Patient", :password => "tacos123.", :password_confirmation => "tacos123." })
Person.create( :user_id => user.id , :name => 'Luis' , :last_name => 'Daza',:sex=>'Male', :birthday=>'15-04-2001',:cell_number=>'89028271',:city=>'Barranquilla',:address=>'Calle 78 # 8A - 33',:status=>'Activo',:type_person=>'Patient')

user = User.create!({:email => "corozco@clinicaelmilagro.com", :role_user => "Patient", :password => "tacos123.", :password_confirmation => "tacos123." })
Person.create( :user_id => user.id , :name => 'Cesar' , :last_name => 'Orozco',:sex=>'Male', :birthday=>'19-04-1988',:cell_number=>'3004273468',:city=>'Barranquilla',:address=>'Calle 45B # 8A - 33',:status=>'Activo',:type_person=>'Patient')

user = User.create!({:email => "lgonzales@clinicaelmilagro.com", :role_user => "Patient", :password => "tacos123.", :password_confirmation => "tacos123." })
Person.create( :user_id => user.id , :name => 'Luis' , :last_name => 'Gonzales',:sex=>'Male', :birthday=>'19-04-1988',:cell_number=>'3004273468',:city=>'Barranquilla',:address=>'Calle 45B # 8A - 33',:status=>'Activo',:type_person=>'Patient')

user = User.create!({:email => "cpuello@clinicaelmilagro.com", :role_user => "Doctor", :password => "tacos123.", :password_confirmation => "tacos123." })
Person.create( :user_id => user.id , :name => 'Carlos' , :last_name => 'Puello',:sex=>'Male', :birthday=>'19-04-1988',:cell_number=>'3004273468',:city=>'Barranquilla',:address=>'Calle 45B # 8A - 33',:status=>'Activo',:type_person=>'Doctor')

user = User.create!({:email => "torozco@clinicaelmilagro.com", :role_user => "Doctor", :password => "tacos123.", :password_confirmation => "tacos123." })
Person.create( :user_id => user.id , :name => 'Tulio' , :last_name => 'Orozco',:sex=>'Male', :birthday=>'19-04-1988',:cell_number=>'3004273468',:city=>'Barranquilla',:address=>'Calle 45B # 8A - 33',:status=>'Activo',:type_person=>'Doctor')

app= Appointment.create!({:doctor_id => "5", :patient_id => "2", :date_appointment => "2014-03-09", :time_appointment => "08-00", :status => "Scheduled"})
app1= Appointment.create!({:doctor_id => "6", :patient_id => "3", :date_appointment => "2014-03-09", :time_appointment => "11-00", :status => "Canceled"})
app2= Appointment.create!({:doctor_id => "6", :patient_id => "4", :date_appointment => "2014-03-10", :time_appointment => "08-00", :status => "Scheduled"})
app3= Appointment.create!({:doctor_id => "5", :patient_id => "3", :date_appointment => "2014-03-10", :time_appointment => "10-00", :status => "Scheduled"})
app4= Appointment.create!({:doctor_id => "5", :patient_id => "4", :date_appointment => "2014-03-10", :time_appointment => "14-00", :status => "Canceled"})