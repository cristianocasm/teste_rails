class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def flash_errors(obj)
    errorTitle = "<h4>Os seguintes erros ocorreram:</h4>"
    errorList = ""

    obj.errors.full_messages.each do |message|
      errorList += "<li>#{message}</li>"
    end
    "#{errorTitle}<ul>#{errorList}</ul>"
  end
end
