class Labeling < ActiveRecord::Base
  belongs_to :label
  belongs_to :labelabel, polymorphic: true
end
