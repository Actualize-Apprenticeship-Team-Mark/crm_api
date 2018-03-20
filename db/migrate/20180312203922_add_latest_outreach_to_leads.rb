class AddLatestOutreachToLeads < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :latest_outreaches, :string
  end
end
