require 'date'
module Users
    def Users.contact_form_user
        @contact_form_user ||= User.new({password: 'ppppassword'})
        @contact_form_user
    end

    def Users.contact_form_invalid_user
        @contact_form__invalid_user ||= User.new(args = {email: 'name@name'})
        @contact_form_Invalid_user
    end

    class User
        attr_reader :password, :email, :projectName
        def initialize(args = {})
            defaults = {password: DateTime.now.strftime('%Q'), email: DateTime.now.strftime('%Q')+ '@test.com', projectName: DateTime.now.strftime('%Q')}
            args = defaults.merge(args)
            @password = args [:password]
            @email = args [:email]
            @projectName = args [:projectName]
        end
    end

end