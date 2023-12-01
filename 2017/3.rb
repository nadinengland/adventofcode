def day_3 square
  current_radius = 0
  heading = :right

  x = 0
  y = 0

  for i in (1...square) do
    case heading
    when :right
      x += 1

      heading = :down if x > current_radius
    when :down
      y -= 1

      heading = :left if y < -current_radius
    when :left
      x -= 1

      heading = :up if x < -current_radius
    when :up
      y += 1

      if y > current_radius
        heading = :right
        current_radius += 1
      end
    end
  end

  (x.abs + y.abs)
end

p day_3 277678
