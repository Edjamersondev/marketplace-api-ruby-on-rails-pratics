# require 'rails_helper'

# RSpec.describe Example, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
require 'rails_helper'

RSpec.describe Example, type: :model do
  it 'is valid with valid attributes' do
    example = Example.new(name: 'Test')
    expect(example).to be_valid
  end
end
