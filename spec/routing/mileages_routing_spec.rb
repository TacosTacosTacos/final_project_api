require "rails_helper"

RSpec.describe MileagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mileages").to route_to("mileages#index")
    end


    it "routes to #show" do
      expect(:get => "/mileages/1").to route_to("mileages#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mileages").to route_to("mileages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mileages/1").to route_to("mileages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mileages/1").to route_to("mileages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mileages/1").to route_to("mileages#destroy", :id => "1")
    end

  end
end
