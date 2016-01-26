###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page '/sitemap.xml', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Timezone
Time.zone = 'Sofia'

# Dicrectory Indexes
activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Locale
activate :i18n, mount_at_root: :bg

# Directories
set :css_dir,       'stylesheets'
set :js_dir,        'javascripts'
set :images_dir,    'images'

# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    tables: true,
    autolink: true,
    smartypants: true,
    gh_blockcode: true,
    lax_spacing: true,
    with_toc_data: true,
    fenced_code_blocks: true

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Minify HTML
  activate :minify_html

  # Use relative URL's
  activate :relative_assets

  # Add asset fingerprint
  activate :asset_hash
end
