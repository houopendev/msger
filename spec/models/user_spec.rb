require 'spec_helper'

describe User do
  context "basic required fields" do
    before(:each) do
      @user = User.create(FactoryGirl.attributes_for(:user))
    end

    subject { @user }
    its(:email) { should match(/john_(\d+)@smith.net/) }
    its(:password) { should == "test!1Password" }
  end

  context "extra fields" do
    before(:each) do
      @user = User.create(FactoryGirl.attributes_for(:user, :full_name => "John Smith"))
    end

    subject { @user }
    its(:full_name) { should == "John Smith" }
  end
end
