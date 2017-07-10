require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is a thing' do
    expect{User.new}.to_not raise_error
  end

  it 'has name and email' do
    user = User.new
    user.user_name = 'Bill Nye'
    user.email = 'BillNye@scienceGuy.com'
    expect(user.save).to eq true
    u2 = User.find_by_user_name 'Bill Nye'
    expect(u2.user_name).to eq 'Bill Nye'
    expect(u2.email).to eq 'BillNye@scienceGuy.com'
  end
end
