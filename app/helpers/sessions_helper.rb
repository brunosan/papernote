module SessionsHelper

def deny_access
    redirect_to root, :notice => "Please sign in to access other pages."
  end

end