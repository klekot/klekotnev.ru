class MusicController < ApplicationController

  before_filter :sections_definition

  def index
  end

  def prehistory
    @description = Section.find_by(name: 'prehistory').description
  end

  def godfathers
    @description = Section.find_by(name: 'godfathers').description
  end

  def old_nectar
    @description = Section.find_by(name: 'old_nectar').description
  end

  def svetlo
    @description = Section.find_by(name: 'svetlo').description
  end

  def pinstripe
    @description = Section.find_by(name: 'pinstripe').description
  end

  def ten_thousand_microphones
    @description = Section.find_by(name: 'ten_thousand_microphones').description
  end

  def solo_music
    @description = Section.find_by(name: 'solo_music').description
  end

  private

  def sections_definition
    @section = Section.music
    @sub_sections = Section.where( parent_section: @section.id )
  end

end
