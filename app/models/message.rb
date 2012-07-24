class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  # Attributes
  field        :content,  :type => String
end
