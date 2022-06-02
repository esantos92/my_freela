require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user => nil,
        :monthly_budget => 2.5,
        :value_hour => 3.5,
        :days_per_week => "",
        :hours_per_day => "",
        :github_profile => "MyText"
      ),
      Profile.create!(
        :user => nil,
        :monthly_budget => 2.5,
        :value_hour => 3.5,
        :days_per_week => "",
        :hours_per_day => "",
        :github_profile => "MyText"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
