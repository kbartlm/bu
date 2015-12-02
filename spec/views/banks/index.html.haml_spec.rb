require 'rails_helper'

RSpec.describe "banks/index", type: :view do
  before(:each) do
    assign(:banks, [
      Bank.create!(
        :bankName => "Bank Name",
        :bankNumber => "Bank Number"
      ),
      Bank.create!(
        :bankName => "Bank Name",
        :bankNumber => "Bank Number"
      )
    ])
  end

  it "renders a list of banks" do
    render
    assert_select "tr>td", :text => "Bank Name".to_s, :count => 2
    assert_select "tr>td", :text => "Bank Number".to_s, :count => 2
  end
end
