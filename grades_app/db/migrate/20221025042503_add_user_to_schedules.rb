class AddUserToSchedules < ActiveRecord::Migration[7.0]
  def change
    add_reference :schedules, :user, index: true
  end
end
