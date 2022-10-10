class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch(:the_sign)

    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@sign.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = []
    5.times do
      @array_of_numbers.push(rand(1..100))
    end


    render({ :template => "fortune_templates/fortune.html.erb"})
  end
end
