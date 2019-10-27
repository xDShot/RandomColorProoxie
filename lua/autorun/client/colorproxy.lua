--

local thinktime = thinktime or 0
local thinkinterval = 0.5

local colors = {
	"0.88592 0.79576 0",
	"0.82712 0.06664 0.89768",
	"1 0 0",
	"0 1 0.3"
}

matproxy.Add( {
	name = "RandomColorProoxie",
	init = function( self, mat, values )
		-- Store the name of the variable we want to set
		self.ColorResult = values.resultvar
	end,
	bind = function( self, mat, ent )
		if CurTime() > ( thinktime + thinkinterval ) then
			mat:SetVector( self.ColorResult, Vector( colors[ math.random( #colors ) ] ) )
			thinktime = CurTime() + thinkinterval
		end
	end
} )


