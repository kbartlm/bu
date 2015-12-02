require 'rails_helper'

RSpec.describe "banks/new", type: :view do
  before(:each) do
    assign(:bank, Bank.new(
      :bankName => "MyString",
      :bankNumber => "MyString"
    ))
  end

  it "renders new bank form" do
    render

    assert_select "form[action=?][method=?]", banks_path, "post" do

      assert_select "input#bank_bankName[name=?]", "bank[bankName]"

      assert_select "input#bank_bankNumber[name=?]", "bank[bankNumber]"
    end
  end
end
