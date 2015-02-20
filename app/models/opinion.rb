class Opinion < ActiveRecord::Base
  belongs_to :constituent
  belongs_to :bill
end
