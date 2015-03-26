class MyLinksController < ApplicationController
  before_action :set_my_link, only: [:show, :edit, :update, :destroy]

  # GET /my_links
  # GET /my_links.json
  def index
    @my_links = MyLink.all
  end

  # GET /my_links/1
  # GET /my_links/1.json
  def show
  end

  # GET /my_links/new
  def new
    @my_link = MyLink.new
  end

  # GET /my_links/1/edit
  def edit
  end

  # POST /my_links
  # POST /my_links.json
  def create
    @my_link = current_user.my_links.new(my_link_params)

    respond_to do |format|
      if @my_link.save
        format.html { redirect_to @my_link, notice: 'My link was successfully created.' }
        format.json { render :show, status: :created, location: @my_link }
      else
        format.html { render :new }
        format.json { render json: @my_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_links/1
  # PATCH/PUT /my_links/1.json
  def update
    respond_to do |format|
      if @my_link.update(my_link_params)
        format.html { redirect_to @my_link, notice: 'My link was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_link }
      else
        format.html { render :edit }
        format.json { render json: @my_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_links/1
  # DELETE /my_links/1.json
  def destroy
    @my_link.destroy
    respond_to do |format|
      format.html { redirect_to my_links_url, notice: 'My link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_link
      @my_link = MyLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_link_params
      params.require(:my_link).permit(:link)
    end
end
