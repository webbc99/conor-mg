class PortfolioItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

  def portfolio_items
    @portfolio_items = PortfolioItems.order(created_at: :desc)
  end

  def index
    @portfolio_items = PortfolioItem.all
  end

  def show
    @portfolio_item
  end

  def new
    @portfolio_item = PortfolioItem.new
  end

  def edit
  end

  def upload
    @portfolio_item.upload = PortfolioItem.upload
  end

  def create
    @portfolio_item = PortfolioItem.new(portfolio_item_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Portfolio item successfully created.'}
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_item_params)
        format.html { redirect_to @portfolio_item, notice: 'Portfolio item successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_item }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_items_url, notice: 'Portfolio item successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_portfolio_item
    @portfolio_item = PortfolioItem.find(params[:id])
  end

  def portfolio_item_params
    params.require(:portfolio_item).permit(:title, :content, :upload, :summary)
  end

end
