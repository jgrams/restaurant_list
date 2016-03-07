class RestListsController < ApplicationController
  before_action :set_rest_list, only: [:show, :edit, :update, :destroy, :map_link]

  # GET /rest_lists
  # GET /rest_lists.json
  def index
    @rest_lists = RestList.all
  end

  # GET /rest_lists/1
  # GET /rest_lists/1.json
  def show
  end

  # GET /rest_lists/new
  def new
    @rest_list = RestList.new
  end

  # GET /rest_lists/1/edit
  def edit
  end

  # POST /rest_lists
  # POST /rest_lists.json
  def create
    @rest_list = RestList.new(rest_list_params)

    respond_to do |format|
      if @rest_list.save
        format.html { redirect_to @rest_list, notice: 'Rest list was successfully created.' }
        format.json { render :show, status: :created, location: @rest_list }
      else
        format.html { render :new }
        format.json { render json: @rest_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rest_lists/1
  # PATCH/PUT /rest_lists/1.json
  def update
    respond_to do |format|
      if @rest_list.update(rest_list_params)
        format.html { redirect_to @rest_list, notice: 'Rest list was successfully updated.' }
        format.json { render :show, status: :ok, location: @rest_list }
      else
        format.html { render :edit }
        format.json { render json: @rest_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rest_lists/1
  # DELETE /rest_lists/1.json
  def destroy
    @rest_list.destroy
    respond_to do |format|
      format.html { redirect_to rest_lists_url, notice: 'Rest list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def map_link
  	map_url_array = ["https://maps.googleapis.com/maps/api/staticmap?center="]
  	map_url_array.push(:city.split(" ").join("+"))
  	map_url_array.push("&zoom=13&size=400x600&markers=")
  	map_url_array.push(:street_address.split(" ").join("+"))
  	map_url_array.push("+")
  	map_url_array.push(:city.split(" ").join("+"))
  	map_url_array.push("+")
  	map_url_array.push(:state)
  	map_url_array.push("+")
  	map_url_array.push(:zipcode)
  	map_url_array.push(@api_key)
  	map_url_string = map_url_array.join
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rest_list
      @rest_list = RestList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rest_list_params
      params.require(:rest_list).permit(:rest_name, :description, :phone_num, :street_address, :city, :state, :zipcode, :menu_link)
    end
end
