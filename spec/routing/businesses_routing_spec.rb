require "spec_helper"

describe BusinessesController do
  describe "routing" do

    it "routes to #index" do
      get("/businesses").should route_to("businesses#index")
    end

    # it "routes to #new" do
    #   get("/jobs/new").should route_to("jobs#new")
    # end

    it "routes to #show" do
      get("/businesses/1").should route_to("businesses#show", :id => "1")
    end

    # it "routes to #edit" do
    #   get("/jobs/1/edit").should route_to("jobs#edit", :id => "1")
    # end

    # it "routes to #create" do
    #   post("/jobs").should route_to("jobs#create")
    # end

    # it "routes to #update" do
    #   put("/jobs/1").should route_to("jobs#update", :id => "1")
    # end

    # it "routes to #destroy" do
    #   delete("/jobs/1").should route_to("jobs#destroy", :id => "1")
    # end

  end
end