class Appointment < ActiveRecord::Base
   belongs_to :doctor, :foreign_key => "doctor_id",:class_name => "Person"
   belongs_to :patient, :foreign_key => "patient_id",:class_name => "Person"
   validates_presence_of :doctor_id, :patient_id, :date_appointment, :time_appointment
   
end