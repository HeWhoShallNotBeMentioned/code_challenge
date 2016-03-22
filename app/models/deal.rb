class Deal < ActiveRecord::Base
  require 'csv'
  require 'smarter_csv'

  def self.import(file)
    SmarterCSV.process(file.path) do |row|
      Deal.create! row
    end
  end
end
