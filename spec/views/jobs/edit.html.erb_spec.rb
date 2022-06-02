require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :name => "MyText",
      :daily_hours => "",
      :total_hours => "",
      :profile => nil
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "textarea#job_name[name=?]", "job[name]"

      assert_select "input#job_daily_hours[name=?]", "job[daily_hours]"

      assert_select "input#job_total_hours[name=?]", "job[total_hours]"

      assert_select "input#job_profile_id[name=?]", "job[profile_id]"
    end
  end
end
