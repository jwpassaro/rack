require 'time'



class Application
  def call(env)
    [200, {}, [Time.now.to_s],]
  end
end

run Application.new
#run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['Goodbye']] }
