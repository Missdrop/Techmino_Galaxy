---@alias Techmino.MusicName
---| Techmino.PubMusicName
---| 'secret7th_hidden'
---| 'propel_marathon'
---
---| 'race remix_mix'
---| 'race_old'
---| 'sakura_noloop'
---| 'secret7th remix_loop'
---| 'shibamata_noloop'
---| 'caprice'

---@enum (key) Techmino.PubMusicName
local songbook={
    ['8-bit happiness']       ={},
    ['8-bit sadness']         ={},
    ['antispace']             ={message="Blank remix remix"},
    ['battle']                ={author="Aether & MrZ"},
    ['blank']                 ={message="The beginning"},
    ['blox']                  ={message="Recollection remix"},
    ['distortion']            ={message="Someone said that 'rectification' is too flat"},
    ['down']                  ={},
    ['dream']                 ={},
    ['echo']                  ={message="Canon experiment"},
    ['exploration']           ={message="Let's explore the universe"},
    ['far']                   ={},
    ['hope']                  ={},
    ['infinite']              ={},
    ['lounge']                ={author="Hailey (cudsys) & MrZ",message="Welcome to Space Café"},
    ['minoes']                ={message="Recollection remix"},
    ['moonbeam']              ={author="Beethoven & MrZ"},
    ['new era']               ={},
    ['overzero']              ={message="Blank remix"},
    ['oxygen']                ={},
    ['peak']                  ={message="3D pinball is fun!"},
    ['pressure']              ={},
    ['push']                  ={},
    ['race']                  ={},
    ['reason']                ={},
    ['rectification']         ={message="Someone said that 'Distortion' is too noisy"},
    ['reminiscence']          ={message="Nitrome games are fun!"},
    ['secret7th']             ={message="The 7th secret"},
    ['secret8th']             ={message="The 8th secret"},
    ['shining terminal']      ={},
    ['sine']                  ={message="~~~~~~"},
    ['space']                 ={message="Blank remix"},
    ['spring festival']       ={message="Happy New Year!"},
    ['storm']                 ={message="Remake of a milestone"},
    ['sugar fairy']           ={author="Tchaikovsky & MrZ",message="A little dark remix"},
    ['subspace']              ={message="Blank remix"},
    ['supercritical']         ={},
    ['truth']                 ={message="Firefly in a Fairytale Remix"},
    ['vapor']                 ={message="Here is my water!"},
    ['venus']                 ={},
    ['warped']                ={},
    ['waterfall']             ={},
    ['way']                   ={},
    ['xmas']                  ={message="Merry Christmas!"},
    ['empty']                 ={author="ERM",message="Blank remix from community (1st)"},
    ['none']                  ={message="Blank remix"},
    ['nil']                   ={message="Blank remix"},
    ['null']                  ={message="Blank remix"},
    ['vacuum']                ={message="Blank remix"},
    ['blank orchestra']       ={author="T0722",message="A cool blank remix"},
    ['jazz nihilism']         ={author="Trebor",message="A cool blank remix"},
    ['beat5th']               ={message="5/4 experiment"},
    ['super7th']              ={message="FL experiment"},
    ['secret8th remix']       ={},
    ['shift']                 ={},
    ['here']                  ={},
    ['there']                 ={},
    ['1980s']                 ={author="C₂₉H₂₅N₃O₅",message="Recollection remix"},
    ['sakura']                ={author="ZUN & C₂₉H₂₅N₃O₅",plain=true},
    ['malate']                ={author="ZUN & C₂₉H₂₅N₃O₅"},
    ['shibamata']             ={author="C₂₉H₂₅N₃O₅",message="Nice song, Nice remix"},
    ['race remix']            ={author="柒栎流星",plain=true},
    ['secret7th remix']       ={author="柒栎流星",plain=true},
    ['propel']                ={author="TetraCepra",message="A cool push remix"},
    ['gallery']               ={message="A venus remix"},
    ['subzero']               ={author="TetraCepra",message="A cool blank remix"},
    ['infinitesimal']         ={author="TetraCepra",message="A cool blank remix"},
    ['vanifish']              ={author="Trebor & MrZ",message="A cool blank remix"},
    ['gelly']                 ={message="Recollection remix"},
    ['humanity']              ={},
    ['space retro']           ={author="LR & MrZ"},
    ['flare']                 ={},
    ['fruit dance']           ={message="Recollection? remix"},
}

for name,data in next,songbook do
    if not data.author then data.author="MrZ" end
    local words=STRING.split(name,' ')
    for i=1,#words do
        words[i]=words[i]:sub(1,1):upper()..words[i]:sub(2)
    end
    data.title=table.concat(words,' ')
end

return songbook
