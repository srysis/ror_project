class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @games = Game.order(:title);
  end
end
