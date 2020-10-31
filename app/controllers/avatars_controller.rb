class AvatarsController < ApplicationController

  def create

    @actualite = Actualite.find(params[:actualite_id])
    @actualite.avatar.attach(params[:avatar])
    redirect_to(actualite_path(@actualite))


  end

end
