Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema"

  field :allPosts, types[Types::PostType] do
    resolve ->(obj, args, ctx) {
      Post.all.limit(10)
    }
  end
  field :post do
    type Types::PostType
    argument :id, !types.ID
    description "Find a Post by ID"
    resolve ->(obj, args, ctx) {
      Post.find_by_id(args["id"])
    }
    #resolve do |obj, args, ctx|
    #  Post.find(args["id"])
    #end
  end
end
