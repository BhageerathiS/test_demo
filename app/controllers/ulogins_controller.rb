class UloginsController < ApplicationController
  before_action :set_ulogin, only: [:show, :edit, :update, :destroy]
  
  def new
  end

  def index
    @ulogin = Ulogin.new
  end

  def show
  end

  def password
  end

  
      
  def edit
    @ulogin = Ulogin.find(params[:id])
  end

  def create
    @ulogin = Ulogin.new(ulogin_params)

    respond_to do |format|
      if @ulogin.save
        format.html { redirect_to articles_path, notice: 'Login was successfully created.' }
        format.json { render :show, status: :created, location: @ulogin }
      else
        format.html { render :new }
        format.json { render json: @ulogin.errors, status: :unprocessable_entity }
      end
    end
  end



  def update
    @ulogin = Ulogin.find(params[:id])
    
    respond_to do |format|
      if @ulogin.update(ulogin_params)
        format.html { redirect_to articles_path, notice: 'Password successfully updated.' }
        format.json { render :show, status: :ok, location: @ulogin}
      else
        format.html { render :edit }
        format.json { render json: @ulogin.errors, status: :unprocessable_entity }
      end
    end
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_ulogin
      @ulogin = Ulogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ulogin_params
      params.require(:ulogin).permit(:name, :emali, :encrypted_password)
    end
end