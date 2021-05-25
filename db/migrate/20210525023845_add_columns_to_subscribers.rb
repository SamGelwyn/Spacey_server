class AddColumnsToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :the_sun, :boolean, :default => false
    add_column :subscribers, :pluto, :boolean, :default => false
    add_column :subscribers, :mercury, :boolean, :default => false
    add_column :subscribers, :venus, :boolean, :default => false
  end
end
