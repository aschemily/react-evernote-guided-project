class CreateJoinTableNotesTags < ActiveRecord::Migration[5.0]
  def change
    create_join_table :notes, :tags do |t|
      t.index [:note_id, :tag_id]
      t.index [:tag_id, :note_id]
    end
  end
end
