require "rails_helper"

RSpec.describe ProcessStepsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/process_steps").to route_to("process_steps#index")
    end

    it "routes to #new" do
      expect(:get => "/process_steps/new").to route_to("process_steps#new")
    end

    it "routes to #show" do
      expect(:get => "/process_steps/1").to route_to("process_steps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/process_steps/1/edit").to route_to("process_steps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/process_steps").to route_to("process_steps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/process_steps/1").to route_to("process_steps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/process_steps/1").to route_to("process_steps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/process_steps/1").to route_to("process_steps#destroy", :id => "1")
    end

  end
end
