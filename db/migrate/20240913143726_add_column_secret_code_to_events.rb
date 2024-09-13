class AddColumnSecretCodeToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :secret_code, :string
  end
end
