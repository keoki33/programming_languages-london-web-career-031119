languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
require 'pry'

 def reformat_languages(languages)
new_hash = {}
new_array = []
languages.each do |one, two|
  two.each do |three, four|
    if new_hash[three].nil?
     new_hash[three] = four
     new_hash[three][:style] = [one]
   else
     new_hash[three][:style] << one
end
end
end
new_hash
end
# p reformat_languages(languages)
