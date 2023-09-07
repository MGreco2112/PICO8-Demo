pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
	init_player()
end

function _update()
	animate_player()
	move_player()
end

function _draw()
	draw_elements()
end
-->8
function init_player()
	
	player_ani = {
		sprite = 1,
		stimer = 0,
		ani_speed = 5,
		first_frame = 1,
		last_frame = 4
	}

	player = {
			xcor = 63,
			ycor = 63
	}
end

function move_player()
	if btn(⬅️) then
		player.xcor -=1
	end
	
	if btn(➡️) then
		player.xcor += 1
	end
	
	if btn(⬆️) then
		player.ycor -= 1
	end
	
	if btn(⬇️) then
		player.ycor += 1
	end

end

function animate_player()
	if btn(⬅️) or btn(➡️) or btn(⬇️) or btn(⬆️) then
		if player_ani.stimer < player_ani.ani_speed then
			player_ani.stimer+=1
		else
			if player_ani.sprite < player_ani.last_frame then
				player_ani.sprite += 1
			else
				player_ani.sprite = player_ani.first_frame
			end
			player_ani.stimer=0
		end
	end
	
end

function draw_elements()
	cls()
	map()
	spr(player_ani.sprite,player.xcor,player.ycor)
end
-->8
function init_state()
	state = "start"
end

--todo
--create start screen that
--closes when button is pressed
--leading to main gameplay
__gfx__
000000000000000000000000000000000000000044444444444444444444444446666464444444444666666466666666ffffffff66666666ccccc7cc00000000
000000000004400000044000000440000004400044444444444444444404444446666664664666466666466644444444acacacacfffffaffc7cccccc00000000
00700700000ff000000ff000000ff000000ff000444b4b44444444444444440446666644666666666646666644444444ccccccccfaffffffcc7ccccc00000000
000770000001100000011100001110000001100044b3b3b44444444444444444466466646666666666664664444444447ccc7cccffffafffcccccc7c00000000
00077000001110000011101001011100000111004b3333b4444444444044444446666664664646666666446644444444c7ccc7ccfffffffaccccccc700000000
00700700000cc000000cc000000cc000000cc0004bbbbbb4444444444444404444666664666666664666646644444444ccccccccffafffff7ccccccc00000000
00000000000cc00000c00c00000cc00000c00c0044444444444444444404444446664644664666466666666644444444cc7ccc7cfffffaffc7cccccc00000000
000000000000000000000000000000000000000044444444444444444444444446666664444444444646666444444444ccc7ccc7fafffffaccccc7cc00000000
__map__
0606060608070607060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606050608060606060607060506060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0607060608060607060606060706050600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060608060606070606070606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
090909090a090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606050608060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0706060608060606060605060506060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060708060607050606060606060700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0607060608060606060607060607060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060608060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060608060606060606050605060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0506060708060606060606060606070600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060608050606060706050606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0607060608060607060606060606070600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
