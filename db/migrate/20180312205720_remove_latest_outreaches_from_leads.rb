class RemoveLatestOutreachesFromLeads < ActiveRecord::Migration[5.0]
  def change
    remove_column :leads, :latest_outreaches, :string
  end
end
