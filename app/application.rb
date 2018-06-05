class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items"
      resp.write "You requested the following items"
    elsif req.path=="/items/"
      @@items.each do |item, price|

       resp.write "#{item} #{price}\n"

     end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end

  def handle_search(search_term)
   if @@items.include?(search_term)
     return "#{search_term} is one of our items"
   else
     return "Couldn't find #{search_term}"
   end
 end

end
