# frozen_string_literal: true
class RemoveNameFromYouTubeVideos < ActiveRecord::Migration
  def change
    remove_column :you_tube_videos, :name
  end
end
