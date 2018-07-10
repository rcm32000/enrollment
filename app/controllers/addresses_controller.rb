class AddressesController < ApplicationController

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    @student = Student.find(params[:student_id])
    address_data = address_params
    address_data[:student_id] = @student.id
    if Address.create!(address_data)
      redirect_to addresses_path
    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip)
  end
end
