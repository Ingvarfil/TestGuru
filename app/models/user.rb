class User < ApplicationRecord
  def list_passed_tests(level)
    Test.joins("JOIN results ON tests.id = results.test_id").where(results: { user_id: id }, level: level)
  end
end
