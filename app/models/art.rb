class Art < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  attr_accessible :date_of_origin, :file, :height, :source, :subline, :title, :width, :file, :file_cache, :remove_file

  mount_uploader :file, FileUploader
end
