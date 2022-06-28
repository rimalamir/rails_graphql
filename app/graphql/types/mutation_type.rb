module Types
  class MutationType < Types::BaseObject
    field :add_note, mutation: Mutations::AddNote
    field :delete_note, mutation: Mutations::DeleteNote
    #

    field :test_field, String, null: false,
          description: "An example field added by the generator"
    def test_field(abc)
      {a: "Hello World #{abc}"}
    end
  end
end
