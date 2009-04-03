class RecipesLogFormatter
def call(severity, time, program_name, message)
datetime = time.strftime("%b %d %H:%M:%S")
process = "rails[#{$PID}]"
hostname = Socket.gethostname.split('.')[0]
message = (String === message ?
message : message.inspect).gsub(/\n/, '').strip
"#{datetime} #{hostname} #{process}: #{message}\n"
end
end