class NowherelandController < ApplicationController

  before_filter :sections_definition

  def index
  end

  def history
    @description = Section.find_by(name: 'history').description
  end

  def cartography
    @description = Section.find_by(name: 'cartography').description
  end

  def languages
    @description = Section.find_by(name: 'languages').description
  end

  def folklore
    @description = Section.find_by(name: 'folklore').description
  end

  private

  def sections_definition
    @section = Section.nowhereland
    @sub_sections = Section.where( parent_section: @section.id )
  end

end
