class Api::V1::ProgramsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

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
    params.require(:program).permit(:title, :you_tube_id)
  end

end
