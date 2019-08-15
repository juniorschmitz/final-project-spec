require 'rails_helper'

RSpec.describe "references/edit", type: :view do
  before(:each) do
    @reference = assign(:reference, Reference.create!(
      :title => "MyString",
      :authors => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit reference form" do
    render

    assert_select "form[action=?][method=?]", reference_path(@reference), "post" do

      assert_select "input[name=?]", "reference[title]"

      assert_select "input[name=?]", "reference[authors]"

      assert_select "textarea[name=?]", "reference[description]"
    end
  end
end
