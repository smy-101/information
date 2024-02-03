require 'rails_helper'

RSpec.describe User, type: :model do
  it '有email' do
    user = User.new email: 'xxx@1.com'
    expect(user.email).to eq 'xxx@1.com'
  end
end
