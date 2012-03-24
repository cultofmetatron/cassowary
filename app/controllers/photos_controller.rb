class PhotosController < ApplicationController
  before_filter :load_gallery
  
  # GET /photos
  # GET /photos.json
  def index
    redirect_to gallery_url(@gallery)
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = @gallery.photos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    
    @photo = @gallery.photos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = @gallery.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @gallery.photos.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to gallery_photo_url(@gallery, @photo), notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = @gallery.photos.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to gallery_photo_path(@gallery, @photo), notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = @gallery.photos.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to gallery_photos_url(@gallery) }
      format.json { head :no_content }
    end
  end
  
  
  def load_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end
  
end
