// demo: fatgame_lab#sharded_bet_logs

// sh.status()
// use fatgame_lab
sh.enableSharding('fatgame_lab')
db.createCollection('sharded_bet_logs')

db.sharded_bet_logs.getShardDistribution()
sh.shardCollection('fatgame_lab.sharded_bet_logs', {"bet_at": "hashed"})
db.sharded_bet_logs.createIndex( { "bet_at": -1, "secret_key_id": 1, "game_bet_num": 1 }, { unique: true } )
db.sharded_bet_logs.createIndex( { "created_at": -1, "merchant_game_id": 1, "user_id": 1, "category": 1 } )



