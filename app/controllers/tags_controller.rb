class TagsController <ApplicationController
  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end

  def main
    render('home/index.html.erb')
  end

  def new
    @tag = Tag.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(params[:tag])

    if @tag.save
      flash[:notice]= "Your tag was added to the Joy of Cooking!!"
      render('tags/success.html.erb')
    else
      render('tags/new.html.erb')
    end
  end

  def show
    @tag = Tag.find(params[:id])
    render('tags/show.html.erb')
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    render('tags/destroy.html.erb')
  end

  def edit
    @tag = Tag.find(params[:id])
    render('tags/edit.html.erb')
  end

  def update
    @tag = tag.find(params[:id])
    if @tag.update(params[:recipe])
      render('tags/success.html.erb')
    else
      render('tags/edit.html.erb')
    end
  end
end
