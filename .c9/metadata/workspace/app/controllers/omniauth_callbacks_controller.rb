{"filter":false,"title":"omniauth_callbacks_controller.rb","tooltip":"/app/controllers/omniauth_callbacks_controller.rb","undoManager":{"mark":15,"position":15,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":28,"column":3},"action":"insert","lines":["class OmniauthCallbacksController < Devise::OmniauthCallbacksController","  def self.provides_callback_for(provider)","    class_eval %Q{","      def #{provider}","        @user = User.find_for_oauth(env[\"omniauth.auth\"], current_user)","","        if @user.persisted?","          sign_in_and_redirect @user, event: :authentication","          set_flash_message(:notice, :success, kind: \"#{provider}\".capitalize) if is_navigational_format?","        else","          session[\"devise.#{provider}_data\"] = env[\"omniauth.auth\"]","          redirect_to new_user_registration_url","        end","      end","    }","  end","","  [:twitter, :facebook, :linked_in].each do |provider|","    provides_callback_for provider","  end","","  def after_sign_in_path_for(resource)","    if resource.email_verified?","      super resource","    else","      finish_signup_path(resource)","    end","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":22,"column":3},"end":{"row":22,"column":4},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":24,"column":4},"end":{"row":24,"column":5},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":25,"column":5},"end":{"row":25,"column":6},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":26,"column":4},"end":{"row":26,"column":5},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":22,"column":7},"end":{"row":22,"column":8},"action":"remove","lines":[" "]},{"start":{"row":22,"column":7},"end":{"row":23,"column":0},"action":"insert","lines":["",""]},{"start":{"row":23,"column":0},"end":{"row":23,"column":3},"action":"insert","lines":["   "]}]}],[{"group":"doc","deltas":[{"start":{"row":23,"column":3},"end":{"row":23,"column":4},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":23,"column":4},"end":{"row":23,"column":5},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":23,"column":5},"end":{"row":23,"column":6},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":17,"column":34},"end":{"row":17,"column":35},"action":"insert","lines":[","]}]}],[{"group":"doc","deltas":[{"start":{"row":17,"column":35},"end":{"row":17,"column":36},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":17,"column":36},"end":{"row":17,"column":37},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":17,"column":37},"end":{"row":17,"column":50},"action":"insert","lines":["google_oauth2"]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":2},"end":{"row":2,"column":0},"action":"insert","lines":["",""]},{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":0},"end":{"row":31,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":71},"end":{"row":6,"column":0},"action":"remove","lines":["",""]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":0},"end":{"row":0,"column":0},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1420974326294,"hash":"cc2f370760c6f4b052099cf657d9a263fa49d87a"}