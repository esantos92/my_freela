require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :name => "MyText",
        :daily_hours => "",
        :total_hours => "",
        :profile => nil
      ),
      Job.create!(
        :name => "MyText",
        :daily_hours => "",
        :total_hours => "",
        :profile => nil
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
