class AddDefaultToEvents < ActiveRecord::Migration[7.1]
  def change
    change_column_default :events, :achieved, from: nil, to: false
  end
end
