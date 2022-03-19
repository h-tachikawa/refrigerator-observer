class Food < ApplicationRecord
  def special_notes
    return '' if @special_notes.nil?
    @special_notes
  end
end
