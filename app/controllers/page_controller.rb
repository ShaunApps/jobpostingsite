class PageController < ApplicationController
skip_before_action CASClient::Frameworks::Rails::Filter, only: [:success]

  def index
  end

  def show
  end

  def new
  end

  def success
  end

end
