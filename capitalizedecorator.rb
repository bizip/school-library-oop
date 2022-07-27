require './basedecorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nbl_object.correct_name.capitalize
  end
end
