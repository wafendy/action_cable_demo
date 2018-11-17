class AjaxController < ApplicationController
  def index
    case params[:job_action]
    when 'sample_one'
      SampleOneJob.perform_async(params[:button_id])
    end
    render plain: 'done'
  end
end
