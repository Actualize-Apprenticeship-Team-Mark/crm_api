class SettingsController < ApplicationController
  def edit
    @setting = current_admin.setting
  end

  def update
    @setting = Admin.find_by(id: params[:current_admin])
    if @setting.update
      flash[:success] = "Settings saved!"
      redirect_to '/'
    else
      flash[:error] = "ERROR: We could not update the settings."
      render :next
    end
  end
end
