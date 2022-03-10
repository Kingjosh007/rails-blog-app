module UsersHelper
  def user_img(user)
    dummy_avatars = []
    dummy_avatars << '/assets/dummy_avatar_1.png'
    dummy_avatars << '/assets/dummy_avatar_2.png'
    dummy_avatars << '/assets/dummy_avatar_3.png'
    dummy_avatars << '/assets/dummy_avatar_4.png'
    dummy_avatars << '/assets/dummy_avatar_5.png'
    dummy_avatars << '/assets/dummy_avatar_6.png'
    dummy_avatars << '/assets/dummy_avatar_7.png'
    dummy_avatars << '/assets/dummy_avatar_8.png'
    dummy_avatars << '/assets/dummy_avatar_9.png'
    dummy_avatars << '/assets/dummy_avatar_10.png'
    user.photo.present? ? user.photo : dummy_avatars.sample
  end
end
