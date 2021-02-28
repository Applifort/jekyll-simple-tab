require 'slim'

TEMPLATE_DIR = 'template'

module Jekyll
  module Simple
    module Tab
      class TabGroupBlock < Liquid::Block
        def initialize(tab_name, tabs_group_name, _)
          super
          raise SyntaxError.new("Tag group #{tab_name} requires name") if tabs_group_name.empty?

          @name = tabs_group_name.strip
        end

        def template_path(path)
          File.join(TEMPLATE_DIR, path.to_s)
        end

        def template_content(template_name)
          File.read(template_path(template_name).strip)
        end

        def render(context)

          templateFile = template_content('tab.slim')
          template = Slim::Template.new(templateFile)
          template.render(scope)
        end
      end
    end
  end
end

Liquid::Template.register_tag('tabs', Jekyll::Simple::Tab::TabGroupBlock)