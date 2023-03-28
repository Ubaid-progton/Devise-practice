class ApplicationController < ActionController::Base

    protected

    def after_sign_in_path_for(resource)
        derives_path
    end
end
 