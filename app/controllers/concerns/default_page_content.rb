module DefaultPageContent
  extend ActiveSupport::Concern

  included do 
    before_action :set_page_defaults 
  end 

  def set_page_defaults 
    @page_title = "DevcampPortfolio1 | My Portfolio Website"
    @seo_keywords = "Adam Pope Portfolio"
  end
end 

#set_page_defaults 
#Changes browser title dynamically depending on what page you are on.
# Files involved: application.html.erb, application_controller.erb, default_page_content.rb, blogs_controller
#Implemented on the controllers. ex @page_title = @blog.title on the show action puts the blog title on the browser.
#seo_keywords work in the same way, through controller actions and with same inital files.  