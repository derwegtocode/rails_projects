class AddColumnsToEventsAttendance < ActiveRecord::Migration[7.0]
  def change
    add_column :events_attendances, :user_id, :integer
    add_column :events_attendances, :event_id, :integer
  end
end
