class QuotesController < Rulers::Controller
    def a_quote
        "there is nothing either good or bad " +
        "but thinking makes it so." +
        # This shows the hash that is everything the application receives from rack
        "\n<pre>\n#{env}\n</pre>"
    end

    def exception
        raise StandardError
    end
end