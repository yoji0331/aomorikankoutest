require 'spec_helper'

describe "places/index" do
  before(:each) do
    assign(:places, [
      stub_model(Place,
        :name => "Name",
        :category => nil,
        :lat => 1.5,
        :lng => 1.5,
        :description => "MyText"
      ),
      stub_model(Place,
        :name => "Name",
        :category => nil,
        :lat => 1.5,
        :lng => 1.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of places" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
