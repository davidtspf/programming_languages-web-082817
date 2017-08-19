require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style_type, language_hash|
    ## :oo, :ruby =>
    language_hash.each do |language_name, type_hash|
      # ruby, :type =>
      new_hash[language_name] ||= {}
      type_hash.each do |type, string_value|
        # type, type value
        new_hash[language_name][type] = string_value
      end
      new_hash[language_name][:style] ||= []
      new_hash[language_name][:style] << style_type # unless new_hash[language_name][:style].include?(style_type)
    end
  end
  return new_hash
end


# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   }
#
#   reworked = {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   }
# }
#
# new_hash = {
#   :ruby => {
#     :type => "interpreted",
#     :style = [oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#   },
#   :python => {
#     :type => "interpreted",
#   }
#   :java => {
#     :type => "compiled"
#   }
# }
