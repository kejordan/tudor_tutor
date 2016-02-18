class APi::V1::ProgramsController < ApplicationController

  def index
    render json: Program.all
  end

  def show
    render json: program
  end

  def create
    render json: Program.create(program_params)
  end

  def update
    render json: program.update(program_params)
  end

  def destroy
    render json: program.destroy
  end

  private

  def program
    Program.find(params[:id])
  end

  def program_params
    params.require(:program).permit(:title)
  end

end