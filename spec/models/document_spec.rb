# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  company_id :integer
#  name       :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Document, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
