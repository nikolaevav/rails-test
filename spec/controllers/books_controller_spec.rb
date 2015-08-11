require 'spec_helper'

describe BooksController do

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BooksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  def valid_attributes
    FactoryGirl.attributes_for(:book)
  end

  describe "GET index" do
    it "assigns all books as @books" do
      book = FactoryGirl.create(:book)
      get :index, {}, valid_session
      assigns(:books).should eq([book])
    end
  end

  describe "GET show" do
    it "assigns the requested book as @book" do
      book = FactoryGirl.create(:book)
      get :show, {id: book.to_param}, valid_session, format: :json
      assigns(:book).should eq(book)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Book" do
        expect {
          post :create, {book: valid_attributes}, valid_session
        }.to change(Book, :count).by(1)
      end

      it "assigns a newly created book as @book" do
        post :create, {book: valid_attributes}, valid_session
        assigns(:book).should be_a(Book)
        assigns(:book).should be_persisted
      end

      it "redirects to the created book" do
        post :create, {book: valid_attributes}, valid_session
        response.should redirect_to(books_url)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested book" do
        book = FactoryGirl.create(:book)
        # Assuming there are no other books in the database, this
        # specifies that the Book created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Book.any_instance.should_receive(:update).with({ "title" => "Заголовок" })
        put :update, {id: book.to_param, book: { "title" => "Заголовок" }}, valid_session
      end

      it "assigns the requested book as @book" do
        book = FactoryGirl.create(:book)
        put :update, {id: book.to_param, book: valid_attributes}, valid_session
        assigns(:book).should eq(book)
      end

      it "redirects to the book" do
        book = FactoryGirl.create(:book)
        put :update, {id: book.to_param, book: valid_attributes}, valid_session
        response.should redirect_to(books_url)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested book" do
      book = FactoryGirl.create(:book)
      expect {
        delete :destroy, {id: book.to_param}, valid_session
      }.to change(Book, :count).by(-1)
    end

    it "redirects to the books list" do
      book = FactoryGirl.create(:book)
      delete :destroy, {id: book.to_param}, valid_session
      response.should redirect_to(books_url)
    end

    it "redirects to the books list" do
      book = FactoryGirl.create(:book)
      delete :destroy, {id: book.to_param}, valid_session
      response.should redirect_to(books_url)
    end

    it "deleting a non-existent book should result in a RecordNotFound Error" do
      book_id = 9999
      expect { delete :destroy, {id: book_id}}.to raise_error ActiveRecord::RecordNotFound
      # response.should redirect_to(books_url)
    end
  end

end
