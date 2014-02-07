require 'spec_helper'

describe "bears/new" do
  before(:each) do
    assign(:bear, stub_model(Bear,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new bear form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bears_path, "post" do
      assert_select "input#bear_name[name=?]", "bear[name]"
      assert_select "input#bear_description[name=?]", "bear[description]"
    end
  end
end
