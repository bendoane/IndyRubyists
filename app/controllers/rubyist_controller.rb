class RubyistController < ApplicationController

  def index
    rubyists = Octokit.search_users("location:Indianapolis language:Ruby", :sort => "joined", :order => :asc)[:items]
    @user_info = rubyists.collect{|r| Octokit.user(r[:id])}
  end

end
