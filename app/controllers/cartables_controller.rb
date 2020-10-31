class CartablesController < ApplicationController


  def new

  end


  def create



        @cartable = Cartable.create(name: params[:name] , short_desc: params[:short_desc] ,long_desc: params[:long_desc], matieres: params[:matieres], price: params[:price])

       if @cartable.save
          redirect_to cartables_path
          flash[:success] = "VLe nouveau produit a bien été créé !"
        else
          render new
          flash[:danger] = "Une erreur s'est produite. Votre message ne s'est pas envoyé, veuillez réessayer et remplir tous les champs requis."
        end


  end


  def index

    @cartable = Cartable.all

  end


  def show

    @cartable = Cartable.find(params[:id])

  end


end
