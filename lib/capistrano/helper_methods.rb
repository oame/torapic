module Capistrano::HelperMethods
  def template(template_name, target)
    render_path = "config/deploy/templates/#{template_name}"
    render = ERB.new(File.read(render_path)).result(binding)
    upload! StringIO.new(render), target
  end

  def put(data, target, args)
    upload! StringIO.new(data), target, args
  end

  def put_file(filepath, target, args)
    put(File.read(filepath), target, args)
  end

  def external_ip
    `curl ip.appspot.com`.strip
  end
end
