class AddCountToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :count, :integer, default: 1
  end
end
