require './nameble'
class BaseDecorator < Nameble
  def initialize(nbl_object)
    super()
    @nbl_object = nbl_object
  end

  def correct_name
    @nbl_object.correct_name
  end
end
