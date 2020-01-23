module SetTray
  extend ActiveSupport::Concern
  
  included do
    before_action :set_cart
  end
  
  def set_cart
    if session[:tray_id]
      tray = Tray.find_by(id: session[:tray_id])
      tray.present? ? (@current_tray = tray) : (session[:tray_id] = nil)
    end
    return unless session[:tray_id].nil?
    @current_tray = Tray.create(user_id: nil)
    session[:tray_id] = @current_tray.id
  end
end