# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string           not null
#

class User < ApplicationRecord

  has_many :responses,
    foreign_key: :user_id,
    class_name: :Response

  has_many :polls,
    foreign_key: :user_id,
    class_name: :Poll

end
