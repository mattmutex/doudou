require 'spec_helper'

describe "bears/index" do
  before(:each) do
    assign(:bears, [
      stub_model(Bear,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Bear,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of bears" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
