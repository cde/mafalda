require "spec_helper"

describe TopicosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/topicos" }.should route_to(:controller => "topicos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/topicos/new" }.should route_to(:controller => "topicos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/topicos/1" }.should route_to(:controller => "topicos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/topicos/1/edit" }.should route_to(:controller => "topicos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/topicos" }.should route_to(:controller => "topicos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/topicos/1" }.should route_to(:controller => "topicos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/topicos/1" }.should route_to(:controller => "topicos", :action => "destroy", :id => "1")
    end

  end
end
