class Movie < ActiveRecord::Base
    validates :title, presence: true
    validates :rating, presence: true
    validates :release_date, presence: true

    validate :date_valid

    def date_valid
        return if release_date.blank?

        begin
            Date.parse(release_date.strftime("%b %e, %y"))
        rescue ArgumentError
            errors.add(:release_date, "isn't a valid date, please use MM-DD-YYYY")
        end
    end
end
