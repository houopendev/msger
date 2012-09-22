require 'spec_helper'

describe HomeController do
  describe "#index" do
    before(:each) do
      get(:index)
    end

    it "loads successfully" do
      response.should be_success
    end
  end

end
