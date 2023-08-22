-- Load the LuaFileSystem library
local lfs = require("lfs")

-- Prompt the user to enter a file path
print("Please enter a file path:")
local path = io.read()

-- Check if the path is valid
if lfs.attributes(path) then
  -- Create a table to store the file or folder attributes
  local items = {}

  -- Iterate over all files and folders in the path
  for name in lfs.dir(path) do
    -- Ignore the current and parent directories
    if name ~= "." and name ~= ".." then
      -- Get the full path of the file or folder
      local fullpath = path .. "/" .. name

      -- Get the file or folder attributes
      local attr = lfs.attributes(fullpath)

      -- Insert the attributes into the table
      table.insert(items, {
        name = name,
        size = attr.size,
        modtime = attr.modification
      })
    end
  end

  -- Sort the table by the modification time in ascending order
  table.sort(items, function(a, b)
    return a.modtime < b.modtime
  end)

  -- Print the top 10 least used files or folders
  print("The top 10 least used files or folders are:")
  for i = 1, math.min(10, #items) do
    -- Get the item attributes
    local item = items[i]

    -- Format the size in bytes, kilobytes, megabytes, or gigabytes
    local size = item.size .. " B"
    if item.size >= 1024 then
      size = string.format("%.2f KB", item.size / 1024)
    end
    if item.size >= 1024 * 1024 then
      size = string.format("%.2f MB", item.size / (1024 * 1024))
    end
    if item.size >= 1024 * 1024 * 1024 then
      size = string.format("%.2f GB", item.size / (1024 * 1024 * 1024))
    end

    -- Format the modification time as a date and time string
    local modtime = os.date("%c", item.modtime)

    -- Print the item name, size, and modification time
    print(i .. ". " .. item.name .. " (" .. size .. ") - " .. modtime)
  end

else
  -- Print an error message if the path is invalid
  print("Invalid file path.")
end

