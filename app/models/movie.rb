class Movie < ActiveRecord::Base

  has_many :reviews

  mount_uploader :image, ImageUploader

  validates :title, 
    presence: true
  validates :director, 
    presence: true
  validates :runtime_in_minutes, 
    numericality: { only_integer: true }
  validates :description, 
    presence: true
  validates :release_date, 
    presence: true

  validate :release_date_is_in_the_past

  def review_average
    if reviews.size == 0
      "There have been no reviews for this movie.."
    else
      reviews.sum(:rating_out_of_ten)/reviews.size
    end
  end

  def self.movies_by_runtime(runtime)
    case runtime.to_i
      when 1
        Movie.where("runtime_in_minutes < 90")
      when 2
        Movie.where("runtime_in_minutes >= 90 AND runtime_in_minutes <= 120")
      when 3
        Movie.where("runtime_in_minutes > 120")
      end
  end



  protected

  def release_date_is_in_the_past
    if release_date.present?
      errors.add(:release_date, "should be in the past") if release_date > Date.today
    end
  end

end
