class TraineesController < ApplicationController
  def new
    @trainee = Trainee.new
  end

  def create
    @trainee = Trainee.new(params[:trainee])
    @trainee.save
  end

private

  def userparams
    params.require(:trainee).permit(:content)
  end
end