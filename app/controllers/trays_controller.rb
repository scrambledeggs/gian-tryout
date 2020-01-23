class TraysController < ApplicationController
  def show
    @tray = @current_tray
  end

  def destroy
    @tray = @current_tray
    @tray.destroy
    session[:tray_id] = nil
    redirect_to root_path
  end
end
