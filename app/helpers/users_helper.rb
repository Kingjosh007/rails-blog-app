module UsersHelper
    def user_img(user)
      user.photo.present? ? user.photo : 'https://thispersondoesnotexist.com/image'
    end
end