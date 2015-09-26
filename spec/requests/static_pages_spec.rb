require 'spec_helper'

describe "StaticPages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home pages" do
    before { visit root_path }

    let(:heading) {'Micropost'}
    let(:page_title) {''}

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end


  describe "Help pages" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About pages" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About us')) }
  end

  describe "Contact pages" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "micropost"
    expect(page).to have_title('Micropost')
  end
end
