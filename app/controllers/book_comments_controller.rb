class BookCommentsController < ApplicationController
  before_action :set_book_comment, only: [:show, :edit, :update, :destroy]

  # GET /book_comments
  # GET /book_comments.json
  def index
    @book_comments = BookComment.all
  end

  # GET /book_comments/1
  # GET /book_comments/1.json
  def show
  end

  # GET /book_comments/new
  def new
    @book_comment = BookComment.new
  end

  # GET /book_comments/1/edit
  def edit
  end

  # POST /book_comments
  # POST /book_comments.json
  def create
    @book_comment = BookComment.new(book_comment_params)

    respond_to do |format|
      if @book_comment.save
        format.html { redirect_to @book_comment, notice: 'Book comment was successfully created.' }
        format.json { render :show, status: :created, location: @book_comment }
      else
        format.html { render :new }
        format.json { render json: @book_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_comments/1
  # PATCH/PUT /book_comments/1.json
  def update
    respond_to do |format|
      if @book_comment.update(book_comment_params)
        format.html { redirect_to @book_comment, notice: 'Book comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_comment }
      else
        format.html { render :edit }
        format.json { render json: @book_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_comments/1
  # DELETE /book_comments/1.json
  def destroy
    @book_comment.destroy
    respond_to do |format|
      format.html { redirect_to book_comments_url, notice: 'Book comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_comment
      @book_comment = BookComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_comment_params
      params.require(:book_comment).permit(:user_id, :book_id, :content, :grade)
    end
end
