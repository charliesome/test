class MyQuery
  def initialize(user_id)
    @user_id = user_id
  end

  def perform
    GraphQL.execute(<<-GRAPHQL, :user_id => @user_id)
      query {
        user(id: $user_id) {
          profile {
            location
          }
        }
      }
    GRAPHQL
  end
end
