class PagesController < PublicController
  expose(:confessions){ Confession.all.order('ID DESC').page(params[:page]).per(100) }

end
