class ListSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :title, :items
end

  
# class ListSerializer

#     def initialize(list_object)
#       @list= list_object
#     end
  
#     def to_serialized_json
#       @list.to_json(:include => {
#               :items => {:except => [:created_at, :updated_at]},
#           }, :except => [:created_at, :updated_at])
#     end
  
# end