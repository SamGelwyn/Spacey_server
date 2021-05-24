class AddDefaultValuesToSubscribers < ActiveRecord::Migration[5.2]
  def change
    change_column :subscribers, :deals, :boolean, :default => false
    change_column :subscribers, :reviews, :boolean, :default => false
    change_column :subscribers, :packages, :boolean, :default => false
    change_column :subscribers, :star_ships, :boolean, :default => false
    change_column :subscribers, :mars, :boolean, :default => false
    change_column :subscribers, :jupiter, :boolean, :default => false
    change_column :subscribers, :moon, :boolean, :default => false
    change_column :subscribers, :saturn, :boolean, :default => false
    change_column :subscribers, :uranus, :boolean, :default => false
    change_column :subscribers, :neptune, :boolean, :default => false
    change_column :subscribers, :the_nearest_black_hole, :boolean, :default => false
    change_column :subscribers, :the_endless_void, :boolean, :default => false
  end
end
