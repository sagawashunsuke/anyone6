class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    # Ticket.create(ticket_params)
    @ticket = Ticket.new(ticket_params)
    if @ticket.valid?
      pay_ticket
      @ticket.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  # def show
  #   @ticket = Ticket.new
  #   @tickets = @ticket.comments.includes(:user)
  # end

  def new_guest
    user = User.find_or_create_by(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト"
    end
    sign_in user
    redirect_to root_path
  end


  private

  def ticket_params
    # @ticket = Ticket.find(params[:ticket_id])
    params.permit(:token, :price)
  end

  def pay_ticket
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: 100,  # 商品の値段
      card: ticket_params[:token],    # カードトークン
      currency: 'jpy'                 # 通貨の種類
    )
  end

end
