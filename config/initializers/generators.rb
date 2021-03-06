Rails.application.config.generators do |g|
  g.test_framework :rspec
  g.helper false
  g.assets false
  g.view_specs false
  g.template_engine :erb
  g.test_framework  :rspec, :fixture => true, :views => false
  g.integration_tool :rspec, :fixture => true, :views => true
  g.fixture_replacement :factory_girl, :dir => "spec/support/factories" 
end
