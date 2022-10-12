class RemoveAttendedEventIdFromEventsAttendance < ActiveRecord::Migration[7.0]
  def change
    remove_column :events_attendances, :attended_event_id, :integer
  end
end
