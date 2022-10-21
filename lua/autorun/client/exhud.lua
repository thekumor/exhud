exhud = {}

--[[---------------------------------------
    Converts an X value from  1920x1080
    screen to client's screen.
-----------------------------------------]]
exhud.x1920 = function( coord )

    return coord * ScrW() / 1920

end

--[[---------------------------------------
    Converts a Y value from  1920x1080
    screen to client's screen.
-----------------------------------------]]
exhud.y1080 = function( coord )

    return coord * ScrH() / 1080

end


--[[---------------------------------------
    Gets a color. Saves it so it doesn't
    have to be constructed again.
-----------------------------------------]]
exhud.colors = {}
exhud.color = function( r, g, b, a )

    a = a or 255

    local hash = r .. g .. b .. a

    local saved_color = exhud.colors[hash]
    
    if ( saved_color ) then
        return saved_color
    end

    exhud.colors[hash] = Color( r, g, b, a )
    return exhud.colors[hash]

end