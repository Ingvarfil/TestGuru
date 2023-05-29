class AddDefaultValueForTestsLevel < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:tests, :lewel, 0)
  end
end
