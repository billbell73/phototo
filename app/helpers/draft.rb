current_user.likes.find_by(photo: photo) ? 'Liked' : 'Not liked'



# Could do method   emails_for(photo.likes)
# but no need here (i.e in photos partial)
<% photo.likes.each do |like | %>
    <%= like.user.email %>
  <% end %>

<% Like.where(photo: photo).each do |like | %>
  <%= User.find(like.user_id).email %>
  <% end %>

