class CreateEventsAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :events_attendances do |t|
      t.integer :attendee_id
      t.integer :attended_event_id

      t.timestamps
    end
  end
end
