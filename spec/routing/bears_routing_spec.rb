require "spec_helper"

describe BearsController do
  describe "routing" do

    it "routes to #index" do
      get("/bears").should route_to("bears#index")
    end

    it "routes to #new" do
      get("/bears/new").should route_to("bears#new")
    end

    it "routes to #show" do
      get("/bears/1").should route_to("bears#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bears/1/edit").should route_to("bears#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bears").should route_to("bears#create")
    end

    it "routes to #update" do
      put("/bears/1").should route_to("bears#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bears/1").should route_to("bears#destroy", :id => "1")
    end

  end
end
