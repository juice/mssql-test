class MssqlAdapter < ApplicationRecord
  self.abstract_class = true

  self.ignored_columns = ["upsize_ts"]
  establish_connection "#{Rails.env}_mssql".to_sym

  ActiveRecord::ConnectionAdapters::SQLServerAdapter.use_output_inserted = false

  def self.table_name_prefix
    "dbo."
  end
end
