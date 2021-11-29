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
end