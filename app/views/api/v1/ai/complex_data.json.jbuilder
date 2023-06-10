json.error false
json.action 'Complex Data'
json.data do
    json.question @attrib[:search]
    json.answer @answer
    json.fields @fields
    json.disasters @disasters
end