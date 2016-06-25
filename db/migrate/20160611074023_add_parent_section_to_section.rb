class AddParentSectionToSection < ActiveRecord::Migration
  def change
    add_column :sections, :parent_section, :integer
  end
end
