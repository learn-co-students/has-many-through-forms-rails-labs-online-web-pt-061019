class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

end

# reject_if:
# silently ignore any new record hashes if they fail to pass your criteria
