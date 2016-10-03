class PageController < ApplicationController
skip_before_action CASClient::Frameworks::Rails::Filter, only: [:index]

  def index
  end

end
