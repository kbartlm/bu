require 'rails_helper'

RSpec.describe "banks/edit", type: :view do
  before(:each) do
    @bank = assign(:bank, Bank.create!(
      :bankName => "MyString",
      :bankNumber => "MyString",
      :user => nil
    ))
  end

  it "renders the edit bank form" do
    render

    assert_select "form[action=?][method=?]", bank_path(@bank), "post" do

      assert_select "input#bank_bankName[name=?]", "bank[bankName]"

      assert_select "input#bank_bankNumber[name=?]", "bank[bankNumber]"

      assert_select "input#bank_user_id[name=?]", "bank[user_id]"
    end
  end
end
