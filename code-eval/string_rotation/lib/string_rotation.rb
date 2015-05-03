def string_rotation(original,rotated)
  i = 0
  while original.length > i
    return true if original.chars.rotate(i.next) == rotated.chars
    i += 1
  end
  return false
end

