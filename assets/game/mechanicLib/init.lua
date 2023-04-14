return {
    mino={
        -- Basic
        statistics=require'assets.game.mechanicLib.mino.statistics',
        sequence=require'assets.game.mechanicLib.mino.sequence',
        misc=require'assets.game.mechanicLib.mino.misc',

        -- Mode
        sprint=require'assets.game.mechanicLib.mino.sprint',
        survivor=require'assets.game.mechanicLib.mino.survivor',
        backfire=require'assets.game.mechanicLib.mino.backfire',
        hypersonic=require'assets.game.mechanicLib.mino.hypersonic',

        -- Special
        stack=require'assets.game.mechanicLib.mino.stack',
    },
    puyo={
        -- Basic
        sequence=require'assets.game.mechanicLib.puyo.sequence',
    },
    gem={},
}
