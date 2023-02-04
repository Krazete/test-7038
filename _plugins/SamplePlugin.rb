module MainPlugin
    class PageGenerator < Jekyll::Generator
        def generate(site)
            # data = site.data['alpha']
            # data.each do |datum|
            #     reading = site.pages.find { |page| page.name == 'default.html'}
            #     reading.data['title'] = 'title'
            #     reading.data['email'] = 'kra'
            #     site.pages << AlphaPage.new(site, datum)
            # end
            puts 'WOOHOO'
            puts 'WOOHOO'
            puts 'WOOHOO'
            puts 'WOOHOO'
            site.pages << AlphaPage.new(site)
        end
    end
    
    class AlphaPage < Jekyll::Page
        def initialize(site)
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
            @basename = 'index2'
            @ext = '.html'
            @name = 'index2.html'
            # Define any custom data you want.
            @data = {
                'layout' => 'default',
                'title' => 'page',
                'email' => 'data'
            }
        end
    end
end
