require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :name => "MyText",
      :daily_hours => "",
      :total_hours => "",
      :profile => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
