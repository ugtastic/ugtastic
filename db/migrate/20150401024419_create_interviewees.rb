# frozen_string_literal: true
class CreateInterviewees < ActiveRecord::Migration
  def change
    create_table :interviewees do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
