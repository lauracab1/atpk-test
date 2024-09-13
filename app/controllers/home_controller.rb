class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :verify_code ]

  def verify_code
    secret_code = params[:secret_code][:code]
    last_event = Event.last

    if last_event && secret_code == last_event.secret_code
      redirect_to event_path(last_event)
    else
      flash[:error] = "Code incorrect. Veuillez réessayer."
      redirect_to root_path
    end
  end
end
