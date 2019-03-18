class AddFlight < ApplicationRecord
	validates :departing, presence: true
	validates :arriving, presence: true
	validates :departureTime, presence: true
	validates :arrivalTime, presence: true
	validate :arrivalTime_not_before_departureTime

	def arrivalTime_not_before_departureTime
		return if departureTime.nil? || arrivalTime.nil?

		if arrivalTime < departureTime
			errors.add(:to, "Can't arrive before you leave!")
		end
	end
end
