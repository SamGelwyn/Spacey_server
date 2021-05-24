class AddTopicsToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :deals, :boolean
    add_column :subscribers, :reviews, :boolean
    add_column :subscribers, :packages, :boolean
    add_column :subscribers, :star_ships, :boolean
    add_column :subscribers, :mars, :boolean
    add_column :subscribers, :jupiter, :boolean
    add_column :subscribers, :moon, :boolean
    add_column :subscribers, :saturn, :boolean
    add_column :subscribers, :uranus, :boolean
    add_column :subscribers, :neptune, :boolean
    add_column :subscribers, :the_nearest_black_hole, :boolean
    add_column :subscribers, :the_endless_void, :boolean
    add_column :subscribers, :frequency, :string
  end
end
