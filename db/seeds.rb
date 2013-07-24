User.create(
            username: "Bryan",
            password: "password"
            )
User.create(
            username: "Karst",
            password: "password")

Post.create(
            title: "Post1",
            content: "aslkdal;skdfdfj;laksjd",
            user_id: rand(1..2)
            )
Post.create(
            title: "Post2",
            content: "This is content",
            user_id: rand(1..2)
            )
Post.create(
            title: "Post3",
            content: "Content number 3",
            user_id: rand(1..2)
            )

Comment.create(
              body: "Number 1",
              user_id: rand(1..2),
              post_id: rand(1..3)
              )

Comment.create(
              body: "Number 2",
              user_id: rand(1..2),
              post_id: rand(1..3)
              )

Comment.create(
              body: "Number 3",
              user_id: rand(1..2),
              post_id: rand(1..3)
              )

Comment.create(
              body: "Number 4",
              user_id: rand(1..2),
              post_id: rand(1..3)
              )

Comment.create(
              body: "Number 5",
              user_id: rand(1..2),
              post_id: rand(1..3)
              )