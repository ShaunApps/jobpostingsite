class Job < ApplicationRecord
  validates :title, :description, :contact, :company, :location, :email, :phone_number, presence: true
  after_create :post_to_slack

  self.per_page = 25

  def post_to_slack
    job = Job.find(self.id)

    base_url = "<http://localhost:3000/jobs/#{self.id}>"
    payload = { text: "Check out this job opportunity for a #{job.title} with #{job.company} in #{job.location}\n #{base_url}", username: "wynterque" }
    response = HTTParty.post('https://hooks.slack.com/services/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', body: payload.to_json )
	end

end
