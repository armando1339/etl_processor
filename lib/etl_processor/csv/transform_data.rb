class TransformData
  extend LightService::Action
  expects :collection
  promises :collection

  executed do |context|
    context.collection.each do |obj|
      obj.store 'external_id', obj.fetch('id')
      obj.delete 'id' 
    end
  end
end