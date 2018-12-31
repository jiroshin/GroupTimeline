class UsersController < ApplicationController
  before_action :require_user_logged_in, except: :toppage
  before_action :correct_user, only: [:elementary, :junior, :high, :college, :circle, :edit]
  
  def toppage
  end
  
  def elementary
        
    #ツイッターAPI呼び出し
        client = Twitter::REST::Client.new do |config|
        config.consumer_key         = ENV['APP_ID']
        config.consumer_secret      = ENV['APP_SECRET']
        config.access_token         = ENV['ACCESS_TOKEN']
        config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
        end
      
    #学校名が同じ人を取得してくる
      @users = User.where(elementary_name: current_user.elementary_name)
      
      @uids = []
      
    #学校名が同じ人のユーザーIDをuids配列に入れる
      @users.each do|user|
       @uids << user.uid
      end
      @uids.flatten!
      
      
      @tweets_id = []
      
    #uids配列からユーザーIDを取り出してそれぞれのツイートを取得する
      @uids.each do |uid|
        @user_id = uid.to_i
        
      #鍵アカだったらエラーを回避
        begin
        # エラーが起こるかも知れないコード。20のツイートを取得してる
        @tweets_id << client.user_timeline(@user_id, options = {count: 30, exclude_replies: true})
        rescue 
        # エラーが発生した時のコード
        end
        
      
      end
      @tweets_id.flatten!
      
     
  end
  
  def junior
            
    #ツイッターAPI呼び出し
        client = Twitter::REST::Client.new do |config|
        config.consumer_key         = ENV['APP_ID']
        config.consumer_secret      = ENV['APP_SECRET']
        config.access_token         = ENV['ACCESS_TOKEN']
        config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
        end
      
    #学校名が同じ人を取得してくる
      @users = User.where(junior_name: current_user.junior_name)
      
      @uids = []
      
    #学校名が同じ人のユーザーIDをuids配列に入れる
      @users.each do|user|
       @uids << user.uid
      end
      @uids.flatten!
      
      
      @tweets_id = []
      
    #uids配列からユーザーIDを取り出してそれぞれのツイートを取得する
      @uids.each do |uid|
        @user_id = uid.to_i
        
      #鍵アカだったらエラーを回避
        begin
        # エラーが起こるかも知れないコード。20のツイートを取得してる
        @tweets_id << client.user_timeline(@user_id, options = {count: 30, exclude_replies: true})
        rescue 
        # エラーが発生した時のコード
        end
        
      
      end
      @tweets_id.flatten!
      
     
  end
  
  def high
            
    #ツイッターAPI呼び出し
        client = Twitter::REST::Client.new do |config|
        config.consumer_key         = ENV['APP_ID']
        config.consumer_secret      = ENV['APP_SECRET']
        config.access_token         = ENV['ACCESS_TOKEN']
        config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
        end
      
    #学校名が同じ人を取得してくる
      @users = User.where(high_name: current_user.high_name)
      
      @uids = []
      
    #学校名が同じ人のユーザーIDをuids配列に入れる
      @users.each do|user|
       @uids << user.uid
      end
      @uids.flatten!
      
      
      @tweets_id = []
      
    #uids配列からユーザーIDを取り出してそれぞれのツイートを取得する
      @uids.each do |uid|
        @user_id = uid.to_i
        
      #鍵アカだったらエラーを回避
        begin
        # エラーが起こるかも知れないコード。20のツイートを取得してる
        @tweets_id << client.user_timeline(@user_id, options = {count: 30, exclude_replies: true})
        rescue 
        # エラーが発生した時のコード
        end
        
      
      end
      @tweets_id.flatten!
      
     
  end
  
  def college
    
    #ツイッターAPI呼び出し
        client = Twitter::REST::Client.new do |config|
        config.consumer_key         = ENV['APP_ID']
        config.consumer_secret      = ENV['APP_SECRET']
        config.access_token         = ENV['ACCESS_TOKEN']
        config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
        end
      
    #学校名が同じ人を取得してくる
      @users = User.where(school_name: current_user.school_name)
      
      @uids = []
      
    #学校名が同じ人のユーザーIDをuids配列に入れる
      @users.each do|user|
       @uids << user.uid
      end
      @uids.flatten!
      
      
      @tweets_id = []
      
    #uids配列からユーザーIDを取り出してそれぞれのツイートを取得する
      @uids.each do |uid|
        @user_id = uid.to_i
        
      #鍵アカだったらエラーを回避
        begin
        # エラーが起こるかも知れないコード。20のツイートを取得してる
        @tweets_id << client.user_timeline(@user_id, options = {count: 30, exclude_replies: true})
        rescue 
        # エラーが発生した時のコード
        end
        
      
      end
      @tweets_id.flatten!
      
      
  end
  
  def circle
            
    #ツイッターAPI呼び出し
        client = Twitter::REST::Client.new do |config|
        config.consumer_key         = ENV['APP_ID']
        config.consumer_secret      = ENV['APP_SECRET']
        config.access_token         = ENV['ACCESS_TOKEN']
        config.access_token_secret  = ENV['ACCESS_TOKEN_SECRET']
        end
      
    #学校名が同じ人を取得してくる
      @users = User.where(circle_name: current_user.circle_name)
      
      @uids = []
      
    #学校名が同じ人のユーザーIDをuids配列に入れる
      @users.each do|user|
       @uids << user.uid
      end
      @uids.flatten!
      
      
      @tweets_id = []
      
    #uids配列からユーザーIDを取り出してそれぞれのツイートを取得する
      @uids.each do |uid|
        @user_id = uid.to_i
        
      #鍵アカだったらエラーを回避
        begin
        # エラーが起こるかも知れないコード。20のツイートを取得してる
        @tweets_id << client.user_timeline(@user_id, options = {count: 30, exclude_replies: true})
        rescue 
        # エラーが発生した時のコード
        end
        
      
      end
      @tweets_id.flatten!
      
     
  end
  
  
  
  
  
  def edit
  end
  
  def update
    @user = User.find(params[:id])
     if @user.update(user_params)
      flash[:notice] = 'タイムライン登録情報が更新されました。'
      redirect_to root_url
     else
      flash.now[:notice] = '登録に失敗しました。もう一度入力してください。'
      render :edit
     end
  end
  
  
  
  
  private
 
#ストロングパラメーター
  def user_params
    params.require(:user).permit(:elementary_name, :junior_name, :high_name, :school_name, :circle_name)
  end

  
  def correct_user
      @user = User.find(params[:id])
      redirect_to root_url unless @user == current_user
  end
end
