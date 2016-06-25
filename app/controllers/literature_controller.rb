class LiteratureController < ApplicationController

  before_filter :sections_definition

  def index
  end

  def prose
    @description = Section.find_by(name: 'prose').description
  end

  def poetry
    @description = Section.find_by(name: 'poetry').description
  end

  def lyrics
    @description = Section.find_by(name: 'lyrics').description
  end

  def dramaturgy
    @description = Section.find_by(name: 'dramaturgy').description
  end

  private

  def sections_definition
    @section = Section.literature
    @sub_sections = Section.where( parent_section: @section.id )
  end

end
