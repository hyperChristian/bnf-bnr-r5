class AddSectiontypeToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :sectiontype, :integer
  end
end
