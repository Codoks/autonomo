Jumpup::Heroku.configure do |config|
  config.app = 'autonomo'
end if Rails.env.development?