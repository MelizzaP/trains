class Train < ActiveRecord::Base
  validates_uniqueness_of :run_number, :scope => :operator_id
end
