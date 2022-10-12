class RemoveAttendeeIdFromEventsAttendance < ActiveRecord::Migration[7.0]
  def change
    remove_column :events_attendances, :attendee_id, :integer
  end
end
