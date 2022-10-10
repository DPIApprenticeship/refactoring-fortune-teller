class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch(:the_sign)

    render({ :template => "fortune_templates/fortune.html.erb"})
  end
end
