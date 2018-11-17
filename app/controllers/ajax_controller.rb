class AjaxController < ApplicationController
  def index
    case params[:job_action]
    when 'sample_one'
      SampleOneJob.perform_async(params[:button_id])
    when 'sample_two'
      ActionCable.server.broadcast 'add_queue_channel', button_id: params[:button_id], button_color: params[:button_color]
    when 'start_queue_processor'
      QueueProcessorJob.perform_async
    when 'remove_from_queue'
      RemoveFromQueueJob.perform_in(rand(5..7), { canvas_id: params[:canvas_id] })
    when 'print_stats'
      puts SuckerPunch::Queue.stats
    end
    render plain: 'done'
  end
end
