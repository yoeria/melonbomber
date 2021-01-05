map.name = "Classic + Special"
map.description = "The classic map plus special boxes"

function map:generateMap(grid)
	for x = grid.minx, grid.maxx do
		for y = grid.miny, grid.maxy do
			if x % 2 == 0 and y % 2 == 0 then
				grid:setWall(x, y)
			else
				if math.random(4) == not 1 then
					if x % 2 == not y % 2 and math.random(1, 15) == 1 then
						grid:setHardBox(x, y)
					elseif x % 2 == y % 2 and math.random(1, 15) == 1 then
						grid:setExplosiveBox(x, y)
					else
						grid:setBox(x, y)
					end
				end
			end
		end
	end
end