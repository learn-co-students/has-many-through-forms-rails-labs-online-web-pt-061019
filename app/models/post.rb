class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  #accepts_nested_attributes_for :categories  
  # if we have a setter, we don't need accepts_nested_attributes_for, because we're defining it explicitly

  def categories_attributes=(category_attributes)  # this argument is a hash
    category_attributes.values.each do |c_att|
      category = Category.find_or_create_by(c_att)
      self.categories << category
    end
  end
end
