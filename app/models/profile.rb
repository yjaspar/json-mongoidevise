class Profile
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :user

  # Attributes
  field      :firstname,       :type => String,  :required => true, :default => ""
  field      :lastname,        :type => String,  :required => true, :default => ""
  field      :birth,           :type => String, :required => true
  field      :zip,             :type => Integer, :default => 0
  field      :job,             :type => String, :default => ""
  field      :in_relationship, :type => Boolean, :default => false
  field      :description,     :type => String, :default => ""
  field      :search,          :type => String, :default => ""
  field      :languages,       :type => Integer
  field      :gender,          :type => String, :required => true
end
