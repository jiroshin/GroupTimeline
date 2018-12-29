class UsersController < ApplicationController
  def toppage
  end
  
  def timeline
    
        client = Twitter::REST::Client.new do |config|
        config.consumer_key         = ENV['APP_ID']
        config.consumer_secret      = ENV['APP_SECRET']
        config.access_token         = ENV['ACCESS_TOKEN']
        config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
        end
      
      
      @users = User.where(school_name: current_user.school_name)
      
      @uids = []
      
      @users.each do|user|
       @uids << user.uid
      end
      @uids.flatten!
      
      
      @tweets_id = []
      
      @uids.each do |uid|
        @num = uid.to_i
        
        begin
        # 例外が起こるかも知れないコード
        @tweets_id << client.user_timeline(@num, options = {count: 20, exclude_replies: true})
        rescue # 変数(例外オブジェクトの代入)
        # 例外が発生した時のコード
        end
        
      
      end
      @tweets_id.flatten!
      
      
  end
  
  def edit
  end
  
  def update
    @user = User.find(params[:id])
     if @user.update(user_params)
      flash[:notice] = 'スクールが登録されました'
      redirect_to root_url
     else
      flash.now[:notice] = 'エラーです。もう一度'
      render :edit
     end
  end
  
  
  private
 
#ストロングパラメーター
def user_params
  params.require(:user).permit(:user_name, :school_name)
end


end
