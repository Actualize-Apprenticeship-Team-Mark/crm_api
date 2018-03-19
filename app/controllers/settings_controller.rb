class SettingsController < ApplicationController
  def edit
    @setting = current_admin.setting
  end

  def update
    @setting = current_admin.setting
    if @setting.update(
      auto_text: params[:auto_text]
      )
      flash[:success] = "Settings saved!"
      redirect_to '/'
    else
      flash[:error] = "ERROR: We could not update the settings."
      render :next
    end
  end
end
