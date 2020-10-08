class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @name = current_user.name
    @namekana = current_user.name_kana
    @occupation = current_user.occupation.name
    @gender = current_user.gender.name
    @birth = current_user.birth
    @family = current_user.family_member
    @email = current_user.email
  end
end
