
# Paths

set :source, 'src'
set :build_dir, 'bin'

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'
set :fonts_dir, 'font'

# Sprockets

activate :sprockets

# Markdown

set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true

# Syntax

activate :syntax

# CSS

activate :autoprefixer do |config|
  config.browsers = [ 'last 2 version', 'Firefox ESR' ]
  config.cascade  = false
  config.inline   = true
end

# Links

activate :relative_assets
set :relative_links, true

# Build

configure :build do
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  # activate :asset_hash
  # activate :gzip
end

# Server

set :port, 4567
activate :livereload
