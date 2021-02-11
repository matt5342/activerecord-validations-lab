class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            unless record.title.match?(/Won't Believe/ ||  /Secret/ || /Top [number]/ || /Guess/)
                record.errors[:title] << "not clickbait-y enough"
        end
    end

end