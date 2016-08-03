require 'spec_helper'

describe "Homepage", type: :feature do
  before do
    visit(root_path)
  end

  it "Shows the site name" do
    within('.site-heading') do
      expect(page).to have_content('Seacret Confession')
    end
  end

end

