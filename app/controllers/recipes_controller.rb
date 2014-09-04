class RecipesController <ApplicationController
  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def main
    render('home/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    if @recipe.save
      flash[:notice]= "Your recipe was added to the Joy of Cooking!!"
      redirect_to('recipes/success.html.erb')
    else
      render('recipes/new.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end
end
