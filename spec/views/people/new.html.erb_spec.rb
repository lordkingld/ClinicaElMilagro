require 'spec_helper'

describe "people/new.html.erb" do
  before(:each) do
    assign(:person, stub_model(Person,
      :user_id => 1,
      :name => "MyString",
      :last_name => "MyString",
      :sex => "MyString",
      :birthday => "MyString",
      :cell_number => "MyString",
      :city => "MyString",
      :address => "MyString",
      :type_person => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_user_id", :name => "person[user_id]"
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_last_name", :name => "person[last_name]"
      assert_select "input#person_sex", :name => "person[sex]"
      assert_select "input#person_birthday", :name => "person[birthday]"
      assert_select "input#person_cell_number", :name => "person[cell_number]"
      assert_select "input#person_city", :name => "person[city]"
      assert_select "input#person_address", :name => "person[address]"
      assert_select "input#person_type_person", :name => "person[type_person]"
      assert_select "input#person_status", :name => "person[status]"
    end
  end
end
