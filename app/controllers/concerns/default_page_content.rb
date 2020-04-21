module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end


    def set_page_defaults
        @page_title = "Devcamp Portfolio | Corina's Portfolio site"
        @seo_keywords = "Corina portfolio"
    end
end