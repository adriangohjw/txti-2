class PagesController < ActionController::Base
  before_action :initialize_page, only: [:show, :edit, :update]

  def new; end

  def create
    @page = Page.create(page_params)
    redirect_to "/pages/#{@page.slug}"
  end

  def show; end

  def edit; end

  def update
    @page.update(page_params) if validate_password
    redirect_to "/pages/#{@page.slug}"
  end

  private

  def page_params
    params.permit(:title, :slug, :body, :password)
  end

  def initialize_page
    @page = Page.find_by_slug(params[:slug])
  end

  def validate_password
    @page.authenticate_password(params[:password])
  end
end
