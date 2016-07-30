require 'drb/drb'

math_service = MathService.new
DRB.start_service("druby://localhost:3030", math_service)
DRB.thread.join
