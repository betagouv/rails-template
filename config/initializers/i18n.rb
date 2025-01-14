# frozen_string_literal: true

I18n.available_locales = [:fr]
I18n.default_locale = :fr

Rails.application.configure do
  config.time_zone = "Europe/Paris"
  config.i18n.raise_on_missing_translations = Rails.env.local?
end
