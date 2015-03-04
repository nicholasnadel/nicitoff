class Item < ActiveRecord::Base
  belongs_to :user
end


private
  def item_params
    params.require(:item).permit(:title, :time_left)
  end
