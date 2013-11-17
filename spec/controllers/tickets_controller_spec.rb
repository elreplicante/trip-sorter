require 'spec_helper'

describe TicketsController do

  let(:valid_ticket_attributes) { FactoryGirl.attributes_for(:ticket) }
  let(:ticket) { FactoryGirl.create(:ticket) }
  let(:valid_session) { {} }

  describe "Ticket" do
    describe "GET index" do
      it "assigns all tickets as @tickets" do
        get :index, {}, valid_session
        expect(assigns(:tickets)).to eq([ticket])
      end
    end

    describe "GET show" do
      xit "assigns the requested ticket as @ticket" do
        get :show, {:id => ticket.to_param}, valid_session
        expect(assigns(:ticket)).to eq(ticket)
      end
    end

    describe "GET new" do
      xit "assigns a new ticket as @ticket" do
        get :new, {}, valid_session
        expect(assigns(:ticket)).to be_a_new(Ticket)
      end
    end

    describe "GET edit" do
      xit "assigns the requested ticket as @ticket" do
        get :edit, {:id => ticket.to_param}, valid_session
        expect(assigns(:ticket)).to eq(ticket)
      end
    end

    describe "POST create" do
      describe "with valid params" do
        xit "creates a new Ticket" do
          expect {
            post :create, {:ticket => valid_ticket_attributes}, valid_session
          }.to change(Ticket, :count).by(1)
        end

        xit "assigns a newly created ticket as @ticket" do
          post :create, {:ticket => valid_ticket_attributes}, valid_session
          expect(assigns(:ticket)).to be_a(Ticket)
          expect(assigns(:ticket)).to be_persisted
        end

        xit "redirects to the created ticket" do
          post :create, {:ticket => valid_ticket_attributes}, valid_session
          expect(response).to redirect_to(Ticket.last)
        end
      end

      describe "with invalid params" do
        before(:each) do
          Ticket.any_instance.stub(:save).and_return(false)
        end
        xit "assigns a newly created but unsaved ticket as @ticket" do
          post :create, {:ticket => { "title" => "invalid value" }}, valid_session
          expect(assigns(:ticket)).to be_a_new(Ticket)
        end

        xit "re-renders the 'new' template" do
          post :create, {:ticket => { "title" => "invalid value" }}, valid_session
          expect(response).to render_template("new")
        end
      end
    end
  end
end
