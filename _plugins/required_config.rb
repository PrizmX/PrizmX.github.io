# frozen_string_literal: true

# Guards settings the legal pages depend on: production builds (CI deploys)
# fail while they are empty; local builds only warn.
Jekyll::Hooks.register :site, :after_init do |site|
  next unless site.config.dig("prizmx", "contact_email").to_s.strip.empty?

  message = "prizmx.contact_email is empty in _config.yml (used by the privacy and terms pages)."
  raise Jekyll::Errors::FatalException, message if Jekyll.env == "production"

  Jekyll.logger.warn "Config:", message
end
