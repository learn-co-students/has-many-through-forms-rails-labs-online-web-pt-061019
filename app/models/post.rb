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
        # self.categories << category
        self.post_categories.build(:category => category)     
        # self.save
      end
    end
  end
end

# self.categories << category  
  # establishes a new relation between a post and a category
  # ineffiecient


# from has has_many video:
# def categories_attributes=(categories_hashes)
#     categories_hashes.each do |i, category_attributes|
#       if categories_attributes[:name].present?
#         category = Category.find_or_create_by(name: categories_attributes[:name])
#         if !self.categories.include?(category)
#         self.post_categories.build(:category => category)
#       end
#     end
#   end
# end