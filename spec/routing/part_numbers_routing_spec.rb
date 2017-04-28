require "rails_helper"

RSpec.describe PartNumbersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/part_numbers").to route_to("part_numbers#index")
    end

    it "routes to #new" do
      expect(:get => "/part_numbers/new").to route_to("part_numbers#new")
    end

    it "routes to #show" do
      expect(:get => "/part_numbers/1").to route_to("part_numbers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/part_numbers/1/edit").to route_to("part_numbers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/part_numbers").to route_to("part_numbers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/part_numbers/1").to route_to("part_numbers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/part_numbers/1").to route_to("part_numbers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/part_numbers/1").to route_to("part_numbers#destroy", :id => "1")
    end

  end
end
