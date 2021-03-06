# == Schema Information
#
# Table name: expenses
#
#  id            :integer          not null, primary key
#  group_id      :integer
#  user_id       :integer
#  description   :string
#  cost_cents    :integer          default(0), not null
#  cost_currency :string           default("USD"), not null
#  date          :date
#  paid          :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Expense < ActiveRecord::Base
  belongs_to :giver, :class_name => 'Membership', :foreign_key => 'giver_id'
  has_one :reveiver, :class_name => 'Membership', :foreign_key => 'receiver_id'
end
