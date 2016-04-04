class UloginsController < ApplicationController
  before_action :set_ulogin, only: [:show, :edit, :update, :destroy]
  

  def new

  end

  def index
    @ulogin = Ulogin.new
  end

  def show
  end

  def ulogin_params
  end

  def set_ulogin
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


  


  end