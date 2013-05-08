class Group
  include Mongoid::Document

  field :group_name, type: String
  embeds_many :members

end