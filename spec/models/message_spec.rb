require 'spec_helper'

describe Message do
  context "basic createion" do
    before(:each) do
      @message = Message.create(FactoryGirl.attributes_for(:message))
    end

    context "basic fields" do
      subject { @message }
      its(:body) { should == "MyString" }
    end
  end
end
