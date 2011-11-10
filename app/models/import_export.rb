class ImportExport < ActiveRecord::Base

  attr_accessible :attachment

  # Paperclip
  has_attached_file :attachment#,
    #:styles => {
    #  :thumb => "100x100#",
    #  :small => "150x150" }
end
