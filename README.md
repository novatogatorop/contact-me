## Contact Form for Rails App
Let's assume that you already have a Rails application. 

1. Create model

   run `rails g model contact name email message:text`
   
2. Run `rails db:migrate`

3. Run `ga . && gc -m 'generate contact model`

4. Create controller

   run `rails g controller contacts new create`
   
5. Run `ga . && gc -m 'generate contacts controller`

6. Add bootstrap 

   run `yarn add bootstrap`

7. Open Gemfile and add:

   ```ruby
   gem 'simple_form'
   gem 'mail_form'
   gem 'invisible_captcha'
   ```
   
8. Run `bundle install`

9. Run the generator of simple_form and mail_form

   ```ruby
   rails g simple_form install --bootstrap
   rails g mail_form
   ```

10. Open `app/asset/stylesheets/application.css`

    rename the file into `application.scss`
    
    then add `@import "bootstrap/scss/bootstrap";`
 
11. Open `routes.rb` and add:

    ```ruby
    Rails.application.routes.draw do
      root to: "contacts#new"
      post "/contacts", to: "contacts#create"
    end
    ```
    
12. Remove or uncomment this line in `development.rb` and `production.rb`:

    `config.action_mailer.raise_delivery_errors = false`
    
13. Open `development.rb` and add:

    ```ruby
    config.action_mailer.default_url_options = { host: 'localhost:3000' }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address: 'smtp.gmail.com',
      port: 587,
      domain: 'gmail.com',
      authentication: 'plain',
      enable_starttls_auto: true,
        user_name: ENV['GMAIL_EMAIL'],
      password: ENV['GMAIL_PASSWORD']
    }
    ```
    
14. Open `production.rb` and add:

    ```ruby
    config.action_mailer_default_url_options = { host: 'https://gmail.com' }
    Rails.application.routes.default_url_options[:host] = 'https://gmail.com'
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address: 'smtp.gmail.com',
      port: 587,
      domain: 'gmail.com',
      authentication: 'plain',
      enable_starttls_auto: true,
      user_name: ENV['GMAIL_EMAIL'],
      password: ENV['GMAIL_PASSWORD']
    }
    ```
