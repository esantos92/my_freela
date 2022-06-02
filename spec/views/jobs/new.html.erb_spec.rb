require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :name => "MyText",
      :daily_hours => "",
      :total_hours => "",
      :profile => nil
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "textarea#job_name[name=?]", "job[name]"

      assert_select "input#job_daily_hours[name=?]", "job[daily_hours]"

      assert_select "input#job_total_hours[name=?]", "job[total_hours]"

      assert_select "input#job_profile_id[name=?]", "job[profile_id]"
    end
  end
end
