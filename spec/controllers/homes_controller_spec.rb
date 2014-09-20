require 'spec_helper'

describe HomesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'timeline'" do
    it "returns http success" do
      get 'timeline'
      response.should be_success
    end
  end

  describe "GET 'd3ShowReel'" do
    it "returns http success" do
      get 'd3ShowReel'
      response.should be_success
    end
  end

end