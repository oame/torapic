module Capistrano::HelperMethods
  def template(template_name, target)
    render_path = "config/deploy/templates/#{template_name}"
    render = ERB.new(File.read(render_path)).result(binding)
    upload! StringIO.new(render), target
  end
end
