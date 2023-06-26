# app/controllers/concerns/accessible.rb
module AdminAccessible
  extend ActiveSupport::Concern

  protected

  def admin?
    unless current_user && current_user.portal&.name == 'admin'
      redirect_back(fallback_location: root_path, alert: 'Only an admin can do that, sorry!')
    end
  end
end
