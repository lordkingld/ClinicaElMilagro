require 'spec_helper'

describe "people/show.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :user_id => 1,
      :name => "Name",
      :last_name => "Lastname",
      :sex => "Sex",
      :birthday => "Birthday",
      :cell_number => "Cellnumber",
      :city => "City",
      :address => "Address",
      :type_person => "Typeper",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lastname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Birthday/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cellnumber/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Typeper/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
