class VisitorsController < ApplicationController
  include Devise::Controllers::Helpers

  def index
    if signed_in?
      if current_user.parish_id == nil
        redirect_to(new_parish_path)
      end
    end
  end
end
