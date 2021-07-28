activate :autoprefixer
activate :inline_svg
activate :directory_indexes
activate :middleman_simple_thumbnailer

# Generate a page for each image listed in the data file
data.portfolio.image_list.each_with_index do |image, current|
  proxy "/shots/#{image[:image_name]}/index.html", "/template/template.html", :locals => { :item => image, :current => current}, :ignore => true, :layout => "fullscreen"
end

# wrap markdown with some formatting
page "text/*", :layout => :text

set :css_dir, "assets/stylesheets"
set :fonts_dir, "assets/fonts"
set :images_dir, "assets/images"
set :js_dir, "assets/javascripts"
set :markdown,
  autolink: true,
  fenced_code_blocks: true,
  footnotes: true,
  highlight: true,
  smartypants: true,
  strikethrough: true,
  tables: true,
  with_toc_data: true
set :markdown_engine, :redcarpet

page "/*.json", layout: false
page "/*.txt", layout: false
page "/*.xml", layout: false

configure :development do
  activate :livereload
end

configure :production do
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end
