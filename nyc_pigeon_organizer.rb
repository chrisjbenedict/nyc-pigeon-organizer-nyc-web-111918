# sort of similar to bachelor lab

def nyc_pigeon_organizer(data)
  # write your code here!
  # creat an empty hash 'pigeon_list'
  pigeon_list = {}
  # iterate over the data and for each attribute
  data.each do |attribute, choices|
    # iterate over each choice
    choices.each do |choice, names|
      #iterate over each pigeon name within each choice
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] ||= []
        pigeon_list[name][attribute] << choice.to_s
      end
    end
  end
  pigeon_list
end
