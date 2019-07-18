class LoadData
  extend LightService::Action
  expects :model, :collection

  executed do |context|
    context.collection.each do |row|
      instance = context.model.new

      row.each do |key,value|
        if instance.attributes.include?(key)
          instance.send("#{key}=", value)
        end
      end

      instance.save
    end
  end
end
