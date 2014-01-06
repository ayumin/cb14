class Grp < ActiveRecord::Base
  has_many :tois
  validates :grp_name,
  presence: {message: "入力してください"},
  uniqueness: {message: "同じ項目があります"}
end
