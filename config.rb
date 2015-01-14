# bundle exec middleman article --blog thinking-of-leadership --lang erb "Energize Your Leadership in a Hybrid Way"

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

Time.zone = "America/New_York"

activate :blog do |blog|
  blog.name = "thinking-of-leadership"
  blog.prefix = "thinking-of-leadership"
  blog.permalink = "{year}/{month}/{day}/{title}.html"  
  blog.layout = "til_layout"
end

activate :blog do |blog|
  blog.name = "leadership-insights"
  blog.prefix = "leadership-insights"
  blog.permalink = "{year}/{title}.html"    
  blog.layout = "content_layout"  
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Google Analytics
activate :google_analytics do |ga|
  # Property ID (default = nil)
  ga.tracking_id = 'UA-51227922-8'
  # Removing the last octet of the IP address (default = false)
  ga.anonymize_ip = false
  # Tracking across a domain and its subdomains (default = nil)
  ga.domain_name = 'vanfleetgroup.com'
  # Tracking across multiple domains and subdomains (default = false)
  ga.allow_linker = false
  # Tracking Code Debugger (default = false)
  ga.debug = false
  # Tracking in development environment (default = true)
  ga.development = false
  # Compress the JavaScript code (default = false)
  ga.minify = true
end

activate :search_engine_sitemap

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
