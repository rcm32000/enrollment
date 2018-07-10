class AddressesController < ApplicationController

  def new
    @address = Address.new(address_params)
    @address.student_id = params[:student_id]
    @address.save
    redirect_to student_path(@address.student)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip)
  end
end
