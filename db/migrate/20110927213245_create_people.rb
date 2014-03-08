class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.integer   :user_id
      t.string    :name
      t.string    :last_name
      t.string    :sex
      t.string    :birthday
      t.string    :cell_number
      t.string    :city
      t.string    :address
      t.string    :type_person
      t.string    :status

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
