# comment to test rerun

class QuotesController < Rulers::Controller
    def a_quote
        # This shows the hash that is everything the application receives from rack
        # "\n<pre>\n#{env}\n</pre>"
        render :a_quote, :noun => :winking
    end

    def exception
        raise StandardError
    end

    def quote_1
        # quote_1 = Rulers::Model::FileModel.find(1)
        # Updating the rulers controller to include Rulers Model makes it possible to shorten to just FileModel here
        quote_1 = FileModel.find(1)
        render :quote, :obj => quote_1
    end

    def index
        quotes = FileModel.all
        render :index, :quotes => quotes
    end

    def new_quote
        attrs = {
            "submitter" => "web user",
            "quote" => "A picture is worth one k pixels",
            "attribution" => "Rebuilding Rails"
        }
        m = FileModel.create attrs
        render :quote, :obj => m
    end
end