class ConfessionsController < PublicController
  expose(:confessions){ Confession.all.order('ID DESC') }
  expose(:confession, attributes: :confession_params)

  def create
    if confession.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if confession.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def confession_params
    params.require(:confession).permit(
      :title,
      :body,
      :image,
    )
  end

end

