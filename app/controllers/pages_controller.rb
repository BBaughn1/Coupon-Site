class PagesController < ApplicationController

	before_action :require_user, only: [:index, :show]

	def index
		@coupons = Coupon.all
	end

	def show
		@coupon = Coupon.find(params[:id])
		@photos = @coupon.photos
	end

	def new
	end
	
end