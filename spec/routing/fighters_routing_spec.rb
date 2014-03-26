require "spec_helper"

describe FightersController do
  describe "routing" do

    it "routes to #index" do
      get("/fighters").should route_to("fighters#index")
    end

    it "routes to #new" do
      get("/fighters/new").should route_to("fighters#new")
    end

    it "routes to #show" do
      get("/fighters/1").should route_to("fighters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fighters/1/edit").should route_to("fighters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fighters").should route_to("fighters#create")
    end

    it "routes to #update" do
      put("/fighters/1").should route_to("fighters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fighters/1").should route_to("fighters#destroy", :id => "1")
    end

  end
end
