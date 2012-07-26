class Profile
  include Mongoid::Document
  embedded_in :user

  # Attributes
  field      :firstname,       :type => String
  field      :lastname,        :type => String
  field      :birth,           :type => String
  field      :zip,             :type => Integer
  field      :job,             :type => String
  field      :in_relationship, :type => Boolean
  field      :description,     :type => String
  field      :search,          :type => String
  field      :languages,       :type => Integer
  field      :gender,          :type => String
end
