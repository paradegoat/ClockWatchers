@user = User.create(email: "test@test.com",
                    password: "password",
                    password_confirmation: "password",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "3526651142")

        puts "1 user created"

        AdminUser.create(email: "admin@test.com",
                         password: "password",
                         password_confirmation: "password",
                         first_name: "Admin",
                         last_name: "Name",
                         phone: "3526651142")

        puts "1 Admin User created"

        100.times do |post|
          Post.create!(date: Date.today,
                       rationale: "#{post} rationale content",
                       user_id: @user.id,
                       overtime_request: 2.5)
        end

          puts "100 post have been created"
