// demo: fatgame_lab#sharded_bet_logs

// sh.status()
// use fatgame_lab
sh.enableSharding('fatgame_lab')
db.createCollection('sharded_bet_logs')

db.sharded_bet_logs.getShardDistribution()
sh.shardCollection('fatgame_lab.sharded_bet_logs', {"created_at": "hashed"})



