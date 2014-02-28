class FriendshipsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    @pending_invited = current_user.pending_invited
  end

  def create
    @Friend = User.find(params[:user_id])
    @friendship_created = current_user.invite(@Friend)
    if @friendship_created
      flash.now[:notice] = "Une demande d'amiti a t envoye  #{@friend.fullname}"
    end
  end

  def approve
    @Friend = User.find(params[:user_id])
    @friendship_approved = current_user.approve(@Friend)
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_invited_by
    flash.now[:notice] = "La demande d'amiti de #{@friend.fullname} a t approuve"
  end

  def remove
    @Friend = User.find(params[:user_id])
    @friendship = current_user.send(:find_any_friendship_with, @Friend)
    if @friendship
      @friendship.delete
      @removed = true
      flash.now[:notice] = "L'amiti avec #{@friend.fullname} a t supprime"
    end
  end
end