activate :blog do |blog|
  blog.prefix = "press/"
  blog.layout = "blog"
  blog.summary_length = 200
  blog.paginate = true
  blog.per_page = 6
  blog.page_link = "page/{num}"
  blog.tag_template = "press/tag.html"
  blog.taglink = "/{tag}.html"
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

after_configuration do
  sprockets.append_path "#{root}/source/vendor/javascripts"
  sprockets.append_path "#{root}/source/vendor/stylesheets"
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  #activate :relative_assets
end

activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
