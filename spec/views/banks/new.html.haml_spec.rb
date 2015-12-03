require 'rails_helper'

RSpec.describe "banks/new", type: :view do
  before(:each) do
    assign(:bank, Bank.new(
      :bankName => "MyString",
      :bankNumber => "MyString",
      :user => nil
    ))
  end

  it "renders new bank form" do
    render

    assert_select "form[action=?][method=?]", banks_path, "post" do

      assert_select "input#bank_bankName[name=?]", "bank[bankName]"

      assert_select "input#bank_bankNumber[name=?]", "bank[bankNumber]"

      assert_select "input#bank_user_id[name=?]", "bank[user_id]"
    end
  end
end
