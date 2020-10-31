class CartableAvatarController < ApplicationController


  def create


        @cartable =
        Cartable.find(params[:cartable_id])
        @cartable.cartable_avatar.attach(params[:cartable_avatar])
        redirect_to(cartable_path(@cartable))



  end


end
