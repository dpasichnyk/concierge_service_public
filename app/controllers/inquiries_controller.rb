class InquiriesController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :update, :destroy ]

  def index
    @inquiries = Inquiry.all
  end

  def new
    @inquiry = Inquiry.new

    respond_to do |format|
      format.turbo_stream { render :form, locals: { inquiry: inquiry } }
      format.html
    end
  end

  def create
    @inquiry = Inquiry.create(inquiry_params)

    respond_to do |format|
      format.turbo_stream do
        if @inquiry.errors.any?
          render turbo_stream: turbo_stream.replace(:inquiry_form_message, partial: "errors", status: :unprocessable_entity, locals: { inquiry: @inquiry })
        else
          render turbo_stream: turbo_stream.update(:inquiry_form, partial: "form", locals: { inquiry: Inquiry.new })
        end
      end

      format.html { redirect_to new_inquiry_url }
    end
  end

  def edit
    @inquiry = inquiry
  end

  def update
    inquiry.update(inquiry_params)
  end

  def destroy
    inquiry.destroy
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:email, :name, :phone_number, :description)
  end

  def inquiry
    @inquiry ||= Inquiry.find(params[:id])
  end
end
