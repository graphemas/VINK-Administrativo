class AppoitmentsController < ApplicationController
  before_action :set_appoitment, only: [:show]
  
  def new
    @appoitment = Appoitment.new
  end

  def create
    @appoitment= Appoitment.new(params_appoitment)
    if @appoitment.save
      redirect_to root_path
    else
      p @appoitment.errors.full_messages
    end
  end

  def index
     @appoitments = Appoitment.all
  end

  def show

  end

  private
    def params_appoitment
      params.require(:appoitment).permit(:subject, :description)
    end

    def set_appoitment
      @appoitment = Appoitment.find(params[:id])
    end
end