require 'rails_helper'

RSpec.describe "banks/show", type: :view do
  before(:each) do
    @bank = assign(:bank, Bank.create!(
      :bankName => "Bank Name",
      :bankNumber => "Bank Number",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bank Name/)
    expect(rendered).to match(/Bank Number/)
    expect(rendered).to match(//)
  end
end
