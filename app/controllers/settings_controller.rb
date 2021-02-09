# frozen_string_literal: true

class SettingsController < ApplicationController
  before_action :get_site

  def general
  end

  def update_general
    @site.update(params.require(:site).permit(:timezone, :domain))
    flash[:success] = "Site update successfully."
    redirect_back fallback_location: general_site_settings_path(@site)
  end

  def visibility
  end

  def update_visibility
  end

  def get_site
    @site = current_user.sites.find(params[:site_id])
  end
end
