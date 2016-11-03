class Story < ApplicationRecord
  validates :name, :link, presence: true
  belongs_to :user
  has_many :votes do
    def latest
      order('id DESC').limit(3)
    end
  end
  after_create :create_initial_vote

  scope :popular,  lambda { where('votes_count >= 5').order('id DESC') }
  scope :upcoming, lambda { where('votes_count <  5').order('id DESC') }

  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end

  protected

    def create_initial_vote
      votes.create user: user
    end
end