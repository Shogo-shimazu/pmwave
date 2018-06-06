class TrnBudgetDetail < ApplicationRecord

  validates :pj_id, presence: true
  validates :subpj_id, presence: true
  validates :team_id, presence: true
  validates :pj_name, presence: true
  validates :subpj_name, presence: true
  validates :team_name, presence: true
  validates :bg_title, presence: true

end
