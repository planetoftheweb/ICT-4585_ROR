class BooksLibrariesController < ApplicationController
  before_action :set_books_library, only: [:show, :edit, :update, :destroy]

  # GET /books_libraries
  # GET /books_libraries.json
  def index
    @books_libraries = BooksLibrary.all
  end

  # GET /books_libraries/1
  # GET /books_libraries/1.json
  def show
  end

  # GET /books_libraries/new
  def new
    @books_library = BooksLibrary.new
  end

  # GET /books_libraries/1/edit
  def edit
  end

  # POST /books_libraries
  # POST /books_libraries.json
  def create
    @books_library = BooksLibrary.new(books_library_params)

    respond_to do |format|
      if @books_library.save
        format.html { redirect_to @books_library, notice: 'Books library was successfully created.' }
        format.json { render :show, status: :created, location: @books_library }
      else
        format.html { render :new }
        format.json { render json: @books_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books_libraries/1
  # PATCH/PUT /books_libraries/1.json
  def update
    respond_to do |format|
      if @books_library.update(books_library_params)
        format.html { redirect_to @books_library, notice: 'Books library was successfully updated.' }
        format.json { render :show, status: :ok, location: @books_library }
      else
        format.html { render :edit }
        format.json { render json: @books_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books_libraries/1
  # DELETE /books_libraries/1.json
  def destroy
    @books_library.destroy
    respond_to do |format|
      format.html { redirect_to books_libraries_url, notice: 'Books library was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_books_library
      @books_library = BooksLibrary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def books_library_params
      params.require(:books_library).permit(:book_id, :library_id)
    end
end
