require 'rails_helper'

RSpec.describe "banks/edit", type: :view do
  before(:each) do
    @bank = assign(:bank, Bank.create!(
      :bankName => "MyString",
      :bankNumber => "MyString"
    ))
  end

  it "renders the edit bank form" do
    render

    assert_select "form[action=?][method=?]", bank_path(@bank), "post" do

      assert_select "input#bank_bankName[name=?]", "bank[bankName]"

      assert_select "input#bank_bankNumber[name=?]", "bank[bankNumber]"
    end
  end
end
