class AjaxController < ApplicationController
  def index
    # case params[:job_action]
    # when 'sample_one'
    #   SampleOneJob.perform_async(params[:button_id])
    # when 'sample_two'
    #   
    # when 'start_queue_processor'
    #   QueueProcessorJob.perform_async
    # when 'remove_from_queue'
    #   RemoveFromQueueJob.perform_in(rand(5..7), { canvas_id: params[:canvas_id] })
    # when 'print_stats'
    #   puts SuckerPunch::Queue.stats
    # when 'chat_log'
    #   sender = params[:sender].blank? ? "anonymous-#{params[:message_id]}" : params[:sender] 
    #   ActionCable.server.broadcast 'chat_log_channel', message: params[:message], sender: sender, message_id: params[:message_id]
    # end
    # render plain: 'done'
  end
end
