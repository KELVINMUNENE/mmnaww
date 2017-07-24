require('bundler/setup')
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
also_reload('lib/**/*.rb')

	get("/") do
		erb(:index)
	end

	get("/game1") do
		erb(:game1)
	end

	get("/new_game") do
		erb(:new_game)
	end

	post("/games") do
    name = params.fetch("name")
    choice = params.fetch("choice")
    amount = params.fetch("amount")
    @game = Game.new({:name => name, :choice => choice, :amount => amount})
    if @game.save()
      erb(:client_success)
    else
      erb(:errors)
    end
  end



    
	
   



   