class PhotoUploadsController < ApplicationController
  before_action :set_photo_upload, only: [:show, :edit, :update, :destroy]

  # GET /photo_uploads
  # GET /photo_uploads.json
  def index
    @photo_uploads = PhotoUpload.all
  end

  # GET /photo_uploads/1
  # GET /photo_uploads/1.json
  def show
  end

  # GET /photo_uploads/new
  def new
    @photo_upload = PhotoUpload.new
  end

  # GET /photo_uploads/1/edit
  def edit
  end

  # POST /photo_uploads
  # POST /photo_uploads.json
  def create
    @photo_upload = PhotoUpload.new(photo_upload_params)

    respond_to do |format|
      if @photo_upload.save
        format.html { redirect_to @photo_upload, notice: 'Photo upload was successfully created.' }
        format.json { render :show, status: :created, location: @photo_upload }
      else
        format.html { render :new }
        format.json { render json: @photo_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_uploads/1
  # PATCH/PUT /photo_uploads/1.json
  def update
    respond_to do |format|
      if @photo_upload.update(photo_upload_params)
        format.html { redirect_to @photo_upload, notice: 'Photo upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_upload }
      else
        format.html { render :edit }
        format.json { render json: @photo_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_uploads/1
  # DELETE /photo_uploads/1.json
  def destroy
    @photo_upload.destroy
    respond_to do |format|
      format.html { redirect_to photo_uploads_url, notice: 'Photo upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_upload
      @photo_upload = PhotoUpload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_upload_params
      params.require(:photo_upload).permit(:image)
    end
end
