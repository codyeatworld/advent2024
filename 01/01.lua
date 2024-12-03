local file = io.open("input", "r")

local list_a = {}
local list_b = {}
local distance = 0

function sort_fn(a, b)
  return a < b
end

for line in file:lines() do
  local item_a, item_b = line:match("^(%S+)%s*(.*)$")

  table.insert(list_a, tonumber(item_a))
  table.insert(list_b, tonumber(item_b))
end

table.sort(list_a, sort_fn)
table.sort(list_b, sort_fn)

for i = 1, #list_a do
  distance = distance + math.abs(list_a[i] - list_b[i])
end

print(distance)

file:close()
