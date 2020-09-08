## Contact Form for Rails App
Let's assume that you already have a Rails application. 

1. create model

   `rails g model contact name email message:text`
   
2. run `rails db:migrate`

3. run `ga . && gc -m 'generate contact model`

4. create controller

   `rails g controller contacts new create`
   
5. run `ga . && gc -m 'generate contacts controller`

6. add bootstrap 

   run `yarn add bootstrap`

7. open Gemfile and add:

   ```ruby
   gem 'simple_form'
   gem 'mail_form'
   gem 'invisible_captcha'
   ```
   
8. run `bundle install`

9. run 
