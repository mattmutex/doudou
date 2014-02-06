require 'spec_helper'

describe "welcomes/index" do
  before(:each) do
    assign(:welcomes, [
      stub_model(Welcome,
        :index => "Index"
      ),
      stub_model(Welcome,
        :index => "Index"
      )
    ])
  end

  it "renders a list of welcomes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Index".to_s, :count => 2
  end
end
