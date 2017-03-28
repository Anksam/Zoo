class AddOrganizationIdToZooos < ActiveRecord::Migration[5.0]
  def change
    add_column :zooos, :organization_id, :integer
  end
end
