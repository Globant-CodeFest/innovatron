json.error false
json.action 'Disaster List'
json.data @disasters, partial: "disaster", as: :disaster, cached: true
json.page @attrib[:page]
json.per_page @attrib[:per_page]
json.total @total
