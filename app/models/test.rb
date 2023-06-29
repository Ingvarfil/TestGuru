class Test < ApplicationRecord
  def self.sorting_tests(category_title)
    joins("JOIN categories ON categories.id = tests.category_id")
    .where(categories: { title: category_title })
    .order(id: :desc)
    .pluck(:title)
  end
end
