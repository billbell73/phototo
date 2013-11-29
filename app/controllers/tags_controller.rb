class TagsController < ApplicationController
  # before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
    # @tag = Tag.find(params[:id])
    @tag = Tag.find_by slug: params[:id]
    # @tag = Tag.find(params[:slug])
    # puts "params[:slug]: #{params[:slug]}"
  end

  # GET /tags/new
  def new
    @tag = Tag.new
    @photo = Photo.find(params[:photo_id])
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  # POST /tags.json
  def create
    @photo = Photo.find(params[:photo_id])
    
    @tag = params[:tag]
    begin
      Tag.create_tags_for! @tag["tag_names"], @photo
      flash[:notice] = 'Tags saved'
    rescue 
      flash[:error] = 'Tags not saved!'
    end
    redirect_to '/'

    #@photo.tags.create(params[:tag].permit(:content))

    # if @something.save
      # flash[:notice] = 'Tags saved'
      # redirect_to '/'
    # else
    #    flash[:notice] = 'Tags not saved!'
    # end

  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to @tag, notice: 'Tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to tags_url }
      format.json { head :no_content }
    end
  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_tag
  #     @tag = Tag.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def tag_params
  #     params.require(:tag).permit(:content, :photo)
  #   end
end
