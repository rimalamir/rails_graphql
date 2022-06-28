module Mutations
  class DeleteNote < Mutations::BaseMutation
    # Input
    argument :params, Integer, required: true
    # Output
    field :message, String, null:false
    field :error, String, null:true


    def resolve(params:)
      note = Note.find(params)
      {message: "SUCC", error: "ERROR"}

    end
    end
end

# SAMPLE REQUEST FROM PLAYGROUND
# mutation {
#   deleteNote(input: { params: 19}) {
#     message , error
#   }
# }
