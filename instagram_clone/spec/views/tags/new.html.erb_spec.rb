require 'spec_helper'

describe "tags/new" do
  before(:each) do
    assign(:tag, stub_model(Tag,
      :content => "MyString",
      :photo => ""
    ).as_new_record)
  end

  it "renders new tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tags_path, "post" do
      assert_select "input#tag_content[name=?]", "tag[content]"
      assert_select "input#tag_photo[name=?]", "tag[photo]"
    end
  end
end
