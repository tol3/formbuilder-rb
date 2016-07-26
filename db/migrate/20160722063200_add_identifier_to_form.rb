class AddIdentifierToForm < ActiveRecord::Migration
  def change
  	add_column :formbuilder_response_fields, :identifier, :string
  end
end
