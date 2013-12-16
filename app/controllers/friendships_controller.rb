class FriendshipsController < ApplicationController
  def create

    @friendship = current_user.friendships.build(friend_id: params[:friend_id], user_id: current_user.id, start_date: DateTime.now)
    @inverse_friendship = User.find(params[:friend_id]).friendships.build(friend_id: current_user.id, user_id: params[:friend_id], start_date: DateTime.now)

    if @friendship.save && @inverse_friendship.save
     #  flash[:notice] = "added friend"
      redirect_to root_url
    else
     # flash[:error] = "unable to add friend"
      redirect_to root_url
    end
  end

  def destroy
    if current_user.friendships.include?(Friendship.find(params[:id]))
      @friendship = current_user.friendships.find(params[:id])
      @friendship.inverse_friendship.destroy
        @friendship.destroy 
    else
      @friendship = Friendship.find(params[:id]).inverse_friendship
      @friendship.inverse_friendship.destroy
      current_user.friendships.find(@friendship.id).destroy
    end
   # flash[:notice] = "Successfully ended friendship"
    redirect_to root_url
  end

end