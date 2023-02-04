module MainPlugin
    class PageGenerator < Jekyll::Generator
        def generate(site)
            data = site.data['alpha']
            data.each do |datum|
                site.pages << AlphaPage.new(site, datum)
            end
        end
    end
    
    class AlphaPage < Jekyll::Page
        def initialize(site, datum)
            # @site = site
            # @base = site.source
            # @dir  = category
            # @basename = 'index'
            # @ext      = '.html'
            # @name     = 'index.html'
            # # Initialize data hash with a key pointing to all posts under current category.
            # # This allows accessing the list in a template via `page.linked_docs`.
            # @data = {
            #     'linked_docs' => posts
            # }
            # # Look up front matter defaults scoped to type `categories`, if given key
            # # doesn't exist in the `data` hash.
            # data.default_proc = proc do |_, key|
            #     site.frontmatter_defaults.find(relative_path, :categories, key)
            # end

            @site = site
            @base = site.source
            # Directory the page will reside in.
            @dir = 'posts'
            # All pages have the same filename.
            @basename = datum['title'] + datum['index'].to_s
            @ext = '.html'
            @name = @basename + @ext
            # Define any custom data you want.
            @data = {
                'layout' => 'default',
                'title' => datum['index'],
                'email' => datum['title']
            }
        end
    end
end
