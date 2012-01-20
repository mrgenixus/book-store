class User 
	def initialize
		@coll = @db.collection("users");
	end

	def create(username,password,email)
		@username = username
		@password = password
		@email = email
		#mongo write user
	end

	def read 
		#mongo read user
		{:username => @username, :email => @email}
	end

	def update (opt_hash)
		old_pwd = @password
		#mongo update user
		@username = opt_hash[:username] if opt_hash[:username];
		@email = opt_hash[:email] if opt_hash[:email];
		@password = opt_hash[:password] if opt_hash[:password];
	end

	def delete 
		old_pwd = @password
		#mongo delete user
		@username = nil
		@email = nil
		@password = nil
	end

	def to_s
		"User: \"#(@name)\" #(@email)";
	end

	def to_json 
		{:name => @name, :email => @email}.to_json
	end
end