require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user => nil,
      :monthly_budget => 1.5,
      :value_hour => 1.5,
      :days_per_week => "",
      :hours_per_day => "",
      :github_profile => "MyText"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_monthly_budget[name=?]", "profile[monthly_budget]"

      assert_select "input#profile_value_hour[name=?]", "profile[value_hour]"

      assert_select "input#profile_days_per_week[name=?]", "profile[days_per_week]"

      assert_select "input#profile_hours_per_day[name=?]", "profile[hours_per_day]"

      assert_select "textarea#profile_github_profile[name=?]", "profile[github_profile]"
    end
  end
end
