class Train < ActiveRecord::Base
  validates_uniqueness_of :run_number, :scope => :operator_id
  validates :train_line, presence: true
  validates :route_name, presence: true
  validates :run_number, presence: true
  validates :operator_id, presence: true
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      lowercase_hash = {}
      row.to_hash.each do |key,value| 
        lowercase_hash.merge!({ key.downcase.strip => value })
      end
      Train.create(lowercase_hash)  
    end
  end
end
