class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  # accepts_nested_attributes_for :categories

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attr|
    # binding.pry
      if !category_attr[:name].empty? 
        # category_attr[:name] != "" 
        category = Category.find_or_create_by(category_attr)
        self.categories << category     
        # self.save
      end
    end
  end
end

# self.categories << category  
# establishes a new relation between a post and a category
