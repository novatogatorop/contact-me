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

9. Run simple_form and mail_form generator
   ```ruby
   rails g simple_form install --bootstrap
   rails g mail_form
   ```

10. Open `app/asset/stylesheets/application.css`
    rename the file into ``application.scss`
    then add `@import "bootstrap/scss/bootstrap";`
 
11. 
