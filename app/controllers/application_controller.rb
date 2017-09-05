class ApplicationController < ActionController::API

  def hello
    render html: "hello, world!"
  end
  
  def index
    @sample = Sample.all({'_id': false})
    render json: @sample
  end
  
  def create
    @sample = Sample.new(sample_params)
	@sample.save
    render json: @sample, status: :created
  end
  
  private
  def sample_params
    params.permit(:job_name, :job_desc, :field, :avg_salary)
  end
  
end
