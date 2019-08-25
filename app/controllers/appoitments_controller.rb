class AppoitmentsController < ApplicationController
  
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
  private
    def params_appoitment
      params.require(:appoitment).permit(:subject, :description)
    end
end