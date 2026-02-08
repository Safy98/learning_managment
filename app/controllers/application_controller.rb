class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  etag { Rails.root.join("config/importmap.rb").mtime.to_i }

  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)
      admin_path
    else
      super
    end
  end
end
