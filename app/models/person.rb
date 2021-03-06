class Person < ActiveRecord::Base
    belongs_to :user
    has_many :appointments
    has_many :doctors, :through => :appointments
    has_many :patients, :through => :appointments
    
    validates :user_id, :presence => true, :uniqueness => true
    SEXS = %w[Male Female]

end
