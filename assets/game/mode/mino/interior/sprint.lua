---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('race',PROGRESS.get('main')==1 and 'simp' or 'base')
        BG.set('none')
    end,
    settings={mino={
        skin='mino_interior',
        clearMovement='teleBack',
        particles=false,
        shakeness=0,
        deathDelay=0,
        soundEvent={countDown=mechLib.mino.misc.interior_soundEvent_countDown},
        event={
            afterClear={
                mechLib.mino.sprint.event_afterClear[40],
                function(P)
                    if PROGRESS.get('main')>=2 and P.modeData.stat.line>10 and P.isMain then
                        BGM.set(bgmList['race'].add,'volume',math.min((P.modeData.stat.line-10)/20,1),2.6)
                    end
                end,
            },
            drawOnPlayer=mechLib.mino.sprint.event_drawOnPlayer[40],
        },
    }},
    result=function()
        local P=GAME.mainPlayer
        if not P then return end
        if P.finished=='AC' then
            PROGRESS.setInteriorScore('marathon',30)
            PROGRESS.setInteriorScore('sprint',
                P.gameTime<60e3  and 200 or
                P.gameTime<90e3  and MATH.interpolate(90e3,140,60e3,200,P.gameTime) or
                P.gameTime<180e3 and MATH.interpolate(180e3,90,90e3,140,P.gameTime) or
                P.gameTime<300e3 and MATH.interpolate(300e3,40,180e3,90,P.gameTime) or
                40
            )
        else
            PROGRESS.setInteriorScore('marathon',P.modeData.stat.line*0.75)
            PROGRESS.setInteriorScore('sprint',P.modeData.stat.line)
        end
    end,
    resultPage=function(time)
        local P=GAME.mainPlayer
        if not P then return end

        local line=math.min(P.modeData.stat.line,math.floor(math.max(time-.26,0)*62))

        -- XX/40
        FONT.set(100)
        GC.setColor(COLOR.L)
        GC.mStr(line.." / 40",800,350)

        -- Bar frame
        GC.setLineWidth(6)
        GC.rectangle('line',800-300-15,550-50-15,600+30,100+30)

        -- Filling bar
        if line==40 then
            GC.setColor(.2,1,.4,.626)
        else
            GC.setColor(1,1,1,.626)
        end
        GC.rectangle('fill',800-300,550-50,math.floor(line/4)*4/40*600,100)

        -- Timer
        if line==40 and time>1.26 then
            FONT.set(60)
            GC.setColor(COLOR.L)
            GC.mStr(STRING.time(P.gameTime/1000),800,510)
        end
    end,
}
