class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :date_loader

  def date_loader
    return Time.now
  end

end
