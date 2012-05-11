class UserValidator < ActiveModel::Validator
  
  def validate(record)
    unless record.new_record? 
       if record.id == record.parent_id
        record.errors[:parent_id] << "No puedes ser tu propio padre"
      end
    end
  end
end