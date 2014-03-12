class Trip < ActiveRecord::Base
 #validations
  # validates_presence_of :location

  # #CALLBACKS
  # after_save :send_me_an_email

  #  def send_me_an_email
  #   Notifier..product_created(self).deliver
  # end
  #self here represents Trip. meta... after anyone save, callback and do this


end
