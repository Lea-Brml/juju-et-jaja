class ActualiteController < ApplicationController

  def new

  end


  def show

    @actualite = Actualite.find(params[:id])

  end



  def create

    @actualite = Actualite.create(title: params[:title] , short_desc: params[:short_desc] ,long_desc: params[:long_desc], author: params[:author], picture: params[:picture])

   if @actualite.save
      redirect_to root_path
      flash[:success] = "L'actu a bien été crée !"
    else
      render :new
      flash[:danger] = "Oops ! Une erreur s'est produite ! Veux-tu bien ré essayer stp :) "
    end

  end



  def index

    @actualite = Actualite.all.order(created_at: :desc)

  end


end
