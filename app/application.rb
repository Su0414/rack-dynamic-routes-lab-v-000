require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items"
      resp.write "You requested the following items"
    elsif req.path=="/items/"
      @@items.each do |item, price|

       resp.write "#{item} #{price}\n"
       binding.pry
     end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end

end
