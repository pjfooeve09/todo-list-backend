class ItemSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :content, :parent, :list_id
end