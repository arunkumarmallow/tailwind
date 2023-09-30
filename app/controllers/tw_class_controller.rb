class TwClassController < ApplicationController
  def index
    @tw_class = []
    @text = params[:code]
    if params[:code].present?
      code = params[:code].gsub("\"", " ").split(' ')
      code.each do |c|
        @tw_class << [c, TwClass.find_by(code: c)&.tw_class]
      end
    end
  end

  def create
    tw_class = TwClass.new(code: params[:code], tw_class: params[:tw_class])
    if tw_class.save
      flash[:success] = "#{params[:code]} added #{params[:tw_class]}"
    else
      flash[:success] = "#{params[:code]}: #{params[:tw_class]} - Failed"
    end
    redirect_to '/class'
  end

  def advance_change
    index
    render :index
  end
end