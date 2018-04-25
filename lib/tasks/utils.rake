namespace :db do

  desc "Creates a user with a pseudo and password"
  task :user, %i(pseudo password) => :environment do |t,args|

    u = User.where("pseudo = ?", args[:pseudo])

    if u.present?
      puts "The user #{args[:pseudo]} already exists." 
    else
      User.create!(
        pseudo: args[:pseudo],
        password: args[:password])
      puts "The user #{args[:pseudo]} is created."
    end
  end
end