class NotesToText < ActiveRecord::Migration[5.0]
  def change
    change_column(:users, :notes, :text)
  end
end
