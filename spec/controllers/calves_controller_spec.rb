require 'spec_helper'

describe CalvesController do

  def mock_calf(stubs={})
    (@mock_calf ||= mock_model(Calf).as_null_object).tap do |calf|
      calf.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all calves as @calves" do
      Calf.stub(:all) { [mock_calf] }
      get :index
      assigns(:calves).should eq([mock_calf])
    end
  end

  describe "GET show" do
    it "assigns the requested calf as @calf" do
      Calf.stub(:find).with("37") { mock_calf }
      get :show, :id => "37"
      assigns(:calf).should be(mock_calf)
    end
  end

  describe "GET new" do
    it "assigns a new calf as @calf" do
      Calf.stub(:new) { mock_calf }
      get :new
      assigns(:calf).should be(mock_calf)
    end
  end

  describe "GET edit" do
    it "assigns the requested calf as @calf" do
      Calf.stub(:find).with("37") { mock_calf }
      get :edit, :id => "37"
      assigns(:calf).should be(mock_calf)
    end
  end

  describe "POST create" do

    describe "with valid params" do

      #before(:each) do
      #  @attr = { :lotNum => "181", :contHyp => "2wks", :age => "2wks",
      #              :gender => "M"  , :sacrificeDate => "10-30-2011",
      #              :pasys  => 40,  :padias => 20, :pamean => 30,
      #              :aosys  => 120, :aodias => 80, :aomean =>100 }
      #end

      it "assigns a newly created calf as @calf" do
        Calf.stub(:new).with({'these' => 'params'}) { mock_calf(:save => true) }
        post :create, :calf => {'these' => 'params'}
        #Calf.stub(:new).with(@params) { mock_calf(:save => true) }
        #post :create, :calf => @params
        assigns(:calf).should be(mock_calf)
      end

      it "redirects to the created calf" do
        Calf.stub(:new) { mock_calf(:save => true) }
        post :create, :calf => {}
        response.should redirect_to(calf_url(mock_calf))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved calf as @calf" do
        Calf.stub(:new).with({'these' => 'params'}) { mock_calf(:save => false) }
        post :create, :calf => {'these' => 'params'}
        assigns(:calf).should be(mock_calf)
      end

      it "re-renders the 'new' template" do
        Calf.stub(:new) { mock_calf(:save => false) }
        post :create, :calf => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested calf" do
        Calf.should_receive(:find).with("37") { mock_calf }
        mock_calf.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :calf => {'these' => 'params'}
      end

      it "assigns the requested calf as @calf" do
        Calf.stub(:find) { mock_calf(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:calf).should be(mock_calf)
      end

      it "redirects to the calf" do
        Calf.stub(:find) { mock_calf(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(calf_url(mock_calf))
      end
    end

    describe "with invalid params" do
      it "assigns the calf as @calf" do
        Calf.stub(:find) { mock_calf(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:calf).should be(mock_calf)
      end

      it "re-renders the 'edit' template" do
        Calf.stub(:find) { mock_calf(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested calf" do
      Calf.should_receive(:find).with("37") { mock_calf }
      mock_calf.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the calves list" do
      Calf.stub(:find) { mock_calf }
      delete :destroy, :id => "1"
      response.should redirect_to(calves_url)
    end
  end

end
