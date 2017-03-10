require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style_type, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= [] #make an array
        new_hash[language][:style] << style_type
        if new_hash[language][attribute].nil?
          new_hash[language][attribute] = value
        end
      end
    end
  end
  new_hash
end
