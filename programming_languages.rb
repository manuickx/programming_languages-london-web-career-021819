def reformat_languages(languages)
new = {}
  languages.each do |style, lang|
    new = new.merge(lang)
    lang.each do |name, type|
      new[name][:style] = []
    end
  end
  new.keys.each do |key|
    if languages[languages.keys.first].include?(key) && languages[languages.keys.last].include?(key)
      new[key][:style] = languages.keys
      elsif languages[languages.keys.first].include?(key)
        new[key][:style] = [languages.keys.first]
      else
        new[key][:style] = [languages.keys.last]
    end
  end
new
end
