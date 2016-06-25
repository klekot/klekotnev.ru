class ProgrammingController < ApplicationController

  before_filter :sections_definition

  def index
  end

  def ruby
    @description = Section.find_by(name: 'ruby').description
  end

  def java
    @description = Section.find_by(name: 'java').description
  end

  def python
    @description = Section.find_by(name: 'python').description
  end

  private

  def sections_definition
    @section = Section.programming
    @sub_sections = Section.where( parent_section: @section.id )
  end

end
