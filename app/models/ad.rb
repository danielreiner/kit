class Ad < ActiveRecord::Base

  attr_accessible :description, :end_date, :file, :position, :start_date, :title, :type, :attachable_id, :artist_id, :event_id, :file_cache, :remove_file

  belongs_to :attachable, :polymorphic => true
  belongs_to :artist
  belongs_to :event

  mount_uploader :file, FileUploader
end
