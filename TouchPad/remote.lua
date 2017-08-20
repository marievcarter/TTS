local kb = libs.keyboard;
dragging = false;

local mouse = libs.mouse;

function update (r)
	--server.update({id = "touch", text = r });
end

--@help Perform absolute mouse movement
--@param x:number Move to X coordinate
--@param y:number Move to Y coordinate
actions.moveto = function (x, y)
	mouse.moveto(x, y);
end

actions.down = function ()
	update("down");
end

actions.up = function ()
	update("up");
end

actions.tap = function ()
	update("tap");
	kb.stroke("c");
	--[[if (dragging) then
		dragging = false;
		mouse.dragend();
		mouse.up();
	else
		mouse.click("left");
	end--]]
end

actions.double = function ()
	update("double");
	--mouse.double("left");
	kb.stroke("p");
end

actions.hold = function ()
	update("hold");
	mouse.down();
	mouse.dragbegin();
	dragging = true;
	kb.stroke("d")
end

actions.delta = function  (id, x, y)
	update("delta: " .. x .. " " .. y);
	mouse.moveraw(x, y);
end

actions.left = function ()
	--mouse.click("left");
	kb.stroke("a");
end
