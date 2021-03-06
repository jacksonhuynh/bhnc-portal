require 'spec_helper'

describe "space_rental_requests/show" do
  before(:each) do
    @space_rental_request = assign(:space_rental_request, stub_model(SpaceRentalRequest,
      :location => "Location", :start => DateTime.new(2015, 1, 1), :end => DateTime.new(2015, 1, 1)
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
  end
end
