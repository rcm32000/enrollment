class AddressesController < ApplicationController

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
    redirect_to student_path(@student)
  end

  def create
    @student = Student.find(params[:student_id])
    address_data = address_params
    address_data[:student_id] = @student.id
    if Address.create!(address_data)
      redirect_to student_path(student)
    else
      render :new
    end
  end

  # def create
  #   @address = Address.new(address_params)
  #   @address.student_id = params[:student_id]
  #   @address.save
  #   redirect_to student_path(@address.student)
  # end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip)
  end
end
