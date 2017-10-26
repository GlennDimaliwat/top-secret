# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  
  it 'should extract out domain from email' do
    user = User.new(email: 'sue@spacex.com', password: 'password')
    expect(user.domain).to eq('spacex.com')

    user = User.new(email: 'bob@apple.com', password: 'password')
    expect(user.domain).to eq('apple.com')
  end

  it 'should extract out company from domain' do
    user = User.new(email: 'sue@spacex.com', password: 'password')
    space_x = Company.create! name: 'Space X', domain: 'spacex.com'
    expect(user.company.name).to eq('Space X')

    user = User.new(email: 'bob@apple.com', password: 'password')
    apple = Company.create! name: 'Apple', domain: 'apple.com'
    expect(user.company.name).to eq('Apple')    
  end
end
