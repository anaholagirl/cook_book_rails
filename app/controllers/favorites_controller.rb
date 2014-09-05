class FavoritesController <ApplicationController
   def index
    @favorites = Favorite.all
    render('favorites/index.html.erb')
  end

  def new
    @recipes = Recipe.all
    @tags = Tag.all
    @favorite = Favorite.new
    render('favorites/new.html.erb')
  end

  def create
    @recipes = Recipe.all
    @tags = Tag.all
    @favorite = Favorite.new(params[:favorite])

    if @favorite.save
      flash[:notice]= "You've tagged a recipe!"
      render('favorites/success.html.erb')
    else
      render('favorites/new.html.erb')
    end
  end

  def view
    @recipes = Recipe.all
    @tags = Tag.all
    @favorite = Favorite.new
    render('favorites/view.html.erb')
  end

  def show
    @tag = Tag.find(params[:id])
    render('favorites/show.html.erb')
  end

  # def destroy
  #   @recipe = Recipe.find(params[:id])
  #   @recipe.destroy
  #   render('recipes/destroy.html.erb')
  # end

  # def edit
  #   @recipe = Recipe.find(params[:id])
  #   render('recipes/edit.html.erb')
  # end

  # def update
  #   @recipe = Recipe.find(params[:id])
  #   if @recipe.update(params[:recipe])
  #     render('recipes/success.html.erb')
  #   else
  #     render('recipes/edit.html.erb')
  #   end
  # end
end
