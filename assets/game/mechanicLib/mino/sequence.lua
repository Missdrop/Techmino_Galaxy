local min,max=math.min,math.max
local ins,rem=table.insert,table.remove

local shift=TABLE.shift

--- @type Techmino.Mech.mino
local sequence={}

local Tetros={1,2,3,4,5,6,7}
local Pentos={8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25}
local easyPentos={10,11,14,19,20,23,24,25}     -- P Q T5 J5 L5 N H I5
local hardPentos={8,9,12,13,15,16,17,18,21,22} -- Z5 S5 F E U V W X R Y

function sequence.none()
    while true do coroutine.yield() end
end

function sequence.bag7(P)
    local l={}
    while true do
        if not l[1] then l=shift(Tetros) end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

function sequence.bag7_bag1(P)
    local l,ex={},{}
    while true do
        if not l[1] then
            l=shift(Tetros)
            if not ex[1] then ex=shift(Tetros) end
            l[8]=rem(ex,P:random(#ex))
        end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

function sequence.bag7_sprint(P)
    -- First Bag, try to prevent early S/Z/O
    local l=shift(Tetros)
    for i=7,2,-1 do ins(l,rem(l,P:random(1,i))) end
    for _=1,2 do
        if l[1]==1 or l[1]==2 or l[1]==6 then
            ins(l,P:random(7),rem(l,1))
        end
    end
    for i=1,7 do coroutine.yield(l[i]) end

    -- Second to fourth Bag, gradually increase the shuffle range
    local rndRange=4
    while rndRange<7 do
        local l2={}
        for _=1,7 do ins(l2,rem(l,P:random(min(#l,rndRange)))) end
        for i=1,7 do coroutine.yield(l2[i]) end
        l=l2
        rndRange=rndRange+1
    end

    -- Completely random from fifth Bag
    while true do
        if not l[1] then l=shift(Tetros) end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

function sequence.bag7_steal1(P)
    local l={}
    local victim=shift(Tetros)
    rem(victim,P:random(7))
    while true do
        if not l[1] then
            l,victim=victim,l
            victim=shift(Tetros)
            ins(l,rem(victim,P:random(#victim)))
        end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

function sequence.bag12_drought(P) -- bag14 without I piece
    local l={}
    while true do
        if not l[1] then
            for i=1,6 do
                ins(l,i)
                ins(l,i)
            end
        end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

function sequence.bag7_flood(P) -- bag7 with extra 3 S pieces and 3 Z pieces
    local l={}
    while true do
        if not l[1] then
            l=shift(Tetros)
            l[8],l[9],l[10]=1,1,1
            l[11],l[12],l[13]=2,2,2
        end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

function sequence.his4_roll2(P)
    local history=TABLE.new(0,2)
    while true do
        local r
        for _=1,#history do -- Reroll up to [hisLen] times
            r=P:random(7)
            local repeated
            for i=1,#history do
                if r==history[i] then
                    repeated=true
                    break
                end
            end
            if not repeated then break end -- Not repeated means success, available r value
        end
        rem(history,1)
        ins(history,r)
        if history[1]~=0 then -- Initializing, just continue generating until history is full
            coroutine.yield(r)
        end
    end
end

function sequence.c2(P)
    local weight=TABLE.new(0,7)
    while true do
        local maxK=1
        for i=1,7 do
            weight[i]=weight[i]*.5+P:random()
            if weight[i]>weight[maxK] then
                maxK=i
            end
        end
        weight[maxK]=weight[maxK]/3.5
        coroutine.yield(maxK)
    end
end

function sequence.random(P)
    local r,prev
    while true do
        repeat
            r=P:random(7)
        until r~=prev
        prev=r
        coroutine.yield(r)
    end
end

function sequence.mess(P)
    while true do
        coroutine.yield(P:random(7))
    end
end

function sequence.pento_bag18(P)
    local l={}
    while true do
        if not l[1] then l=shift(Pentos) end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

function sequence.pento_bag_EZ8plusHD4fromBag10(P)
    local l,ex={},{}
    while true do
        if not l[1] then
            l=shift(easyPentos)
            for _=1,4 do
                if not ex[1] then ex=shift(hardPentos) end
                ins(l,rem(ex,P:random(#ex)))
            end
        end
        coroutine.yield(rem(l,P:random(#l)))
    end
end

local distWeight_data={
    fake7bag={
        pieces=Tetros,
        weights={64606156304596,131327514360144,203786783816133,287098623729448,390038487466665,531106246225509,762542509117884,896123925124349,1108610016824348,1476868735064520,2236067394570951,4591633945951618,1e99}, -- Data from Farter
    },
    noDrought={
        pieces=Tetros,
        weights={1,1,1,1,1,1,1,1,1,1,1,1,1e99},
    },
    hardDrought={
        pieces=Tetros,
        weights={1,1,1,1,2,3,4,5,6,7,8,9,26},
    },
    easyFlood={
        pieces=Tetros,
        weights={10,10,10,10,9,8,7,6,5},
    },
}
sequence.distWeight=TABLE.newPool(function(self,mode)
    assert(distWeight_data[mode])
    self[mode]=function(P)
        local pieces=distWeight_data[mode].pieces
        local weights=distWeight_data[mode].weights
        local len=#pieces

        local distances={}
        for i=1,len do distances[i]=i end
        for i=len,2,-1 do ins(distances,rem(distances,P:random(1,i))) end

        local tempWei=TABLE.new(false,len)
        while true do
            local sum=0
            for i=1,len do
                distances[i]=distances[i]+1
                tempWei[i]=weights[distances[i]] or weights[#weights]
                sum=sum+tempWei[i]
            end
            local r=P:random()*sum
            for i=1,len do
                r=r-tempWei[i]
                if r<=0 then
                    coroutine.yield(pieces[i])
                    distances[i]=0
                    break
                end
            end
        end
    end
    return self[mode]
end)

return sequence
