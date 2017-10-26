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

class Document < ApplicationRecord
  belongs_to :company
end
