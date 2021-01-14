module ApplicationHelper

  def auth_token
    "<input type=\"hidden\"
      name=\"authenticity_token\"
      value=#{form_authenticity_token}/>"
      .html_safe
  end
end


# <input type=“hidden” name=“_my_csrf_token” value=“<%=my_csrf_token%>”>


# before_filter :validate_csrf_token

# def my_csrf_token
# 	self.session[:_my_csrf_token] ||= SecureRandom::urlsafe_base64
# end 

# def validate_csrf_token
# 	return if self.request.method == “GET” 
# 	return if self.session[:_my_csrf_token]==self.params[:_my_csrf_token]
	
# 	raise “CSRF ATTACK DETECTED” 
# end 