class Admins::SchoolsController < ApplicationController

  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
     if @school.save
      redirect_to admins_school_path(@school), notice: "You have created item successfully."
     else
      render 'new'
     end
  end

  def show
    @school = School.find(params[:id])
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to admins_school_path(@school), notice: "You have updated item successfully."
    else
      render "edit"
    end
  end



  private
  def school_params
    params.require(:school).permit(:school_division, :prefecture, :name, :name_kana, :postal_code, :addres, :url, :google, :yahoo, :image)
  end

end
