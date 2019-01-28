require 'test_helper'

class MyModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    MssqlAdapter.connection
    @my_models = my_models(:one)
  end
end
