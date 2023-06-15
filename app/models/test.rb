class Test < ApplicationRecord
  def self.filtr(f_title)
    joins("JOIN categories ON categories.id = tests.category_id").where(categories: { title: f_title })
      .order(id: :desc)
      .pluck(:title)
  end
end
