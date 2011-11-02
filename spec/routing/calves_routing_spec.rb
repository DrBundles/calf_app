require "spec_helper"

describe CalvesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/calves" }.should route_to(:controller => "calves", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/calves/new" }.should route_to(:controller => "calves", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/calves/1" }.should route_to(:controller => "calves", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/calves/1/edit" }.should route_to(:controller => "calves", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/calves" }.should route_to(:controller => "calves", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/calves/1" }.should route_to(:controller => "calves", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/calves/1" }.should route_to(:controller => "calves", :action => "destroy", :id => "1")
    end

  end
end
