class TrnBudgetDetailsController < ApplicationController
  def index
    @trn_budget_details = TrnBudgetDetail.all
    @trn_budget_detail = TrnBudgetDetail.new
  end

  def show
    @trn_budget_details = TrnBudgetDetail.find(params[:bg_id])
  end

  def new
    @trn_budget_detail = TrnBudgetDetail.new
  end

  def create
    @trn_budget_detail = TrnBudgetDetail.new(trn_budget_detail_params)

    if @trn_budget_detail.save
      flash[:success] = '予算が正常に登録されました'
      redirect_to @trn_budget_detail
    else
      flash.now[:danger] = '予算が登録できませんでした'
      render :new
    end
  end

  def edit
    @trn_budget_details = TrnBudgetDetail.find(params[:bg_id])
  end

  def update
    @trn_budget_detail = TrnBudgetDetail.find(params[:bg_id])

    if @trn_budget_detail.update(trn_budget_detail_params)
      flash[:success] = '予算は正常に更新されました'
      redirect_to @trn_budget_detail
    else
      flash.now[:danger] = '予算は更新されませんでした'
      render :edit
    end
  end

  def destroy
    @trn_budget_detail = TrnBudgetDetail.find(params[:bg_id])
    @trn_budget_detail.destroy

    flash[:success] = '予算は正常に削除されました'
    redirect_to trn_budget_details_url
  end
end