class PostsController < ApplicationController
  skip_before_action :authenticate_odogwu!, only: [:index, :show, :published_at]
  before_action :set_post, only: [:show, :edit, :update, :destroy, :publish, :unpublish]
 
  # GET /posts
  # GET /posts.json
  def index
    if current_odogwu
      if params[:tag].present?
        @posts = Post.most_recent.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 30)
      else
        @posts = Post.most_recent.paginate(:page => params[:page], :per_page => 30) #Calls the most_recent scope action plus pagination from the model
      end  
    else
      if params[:tag].present?
        @posts = Post.most_recent.published.tagged_with(params[:tag]).paginate(:page => params[:page])
      else
        @posts = Post.most_recent.published.paginate(:page => params[:page])
      end 
    end 
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.friendly.find(params[:id]) # calls the friendly_id action on the posts
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end
  
  def publish
    @post.update(published: true, published_at: Time.now) # sets the posts to published and the time of publishing 
    redirect_to posts_url
  end

  def unpublish
    @post.update(published: false, published_at: nil) # sets the post to unpublished
    redirect_to posts_url
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id]) # calls the friendly_id action on the posts
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :preview, :body, :banner_image_url, :tag_list)
    end
end
