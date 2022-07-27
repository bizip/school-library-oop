require './basedecorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nbl_object.correct_name[0..9] if @nbl_object.correct_name.length > 10
  end
end
