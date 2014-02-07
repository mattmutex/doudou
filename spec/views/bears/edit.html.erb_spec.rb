require 'spec_helper'

describe "bears/edit" do
  before(:each) do
    @bear = assign(:bear, stub_model(Bear,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit bear form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bear_path(@bear), "post" do
      assert_select "input#bear_name[name=?]", "bear[name]"
      assert_select "input#bear_description[name=?]", "bear[description]"
    end
  end
end
