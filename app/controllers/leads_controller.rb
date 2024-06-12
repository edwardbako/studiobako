class LeadsController < ApplicationController
  # GET /leads/new
  def new
    @lead = Lead.new
  end

  # POST /leads or /leads.json
  def create
    @lead = Lead.new(lead_params)
    # binding.irb

    if @lead.save
      redirect_to root_url, notice: t(".success")
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.require(:lead).permit(:name, :email, :phone, :company, :source, :description, :industry, :task, :solution, :expectations, :budget)
    end
end
