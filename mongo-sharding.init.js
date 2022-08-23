// mongo-shard-01
sh.addShard( "mongo-shard-01/mongo-shard-01a:27017")
sh.addShard( "mongo-shard-01/mongo-shard-01b:27017")
// sh.addShard( "mongo-shard-01/mongo-shard-01c:27017")

// mongo-shard-02
sh.addShard( "mongo-shard-02/mongo-shard-02a:27017")
sh.addShard( "mongo-shard-02/mongo-shard-02b:27017")
// sh.addShard( "mongo-shard-02/mongo-shard-02c:27017")

// mongo-shard-03
sh.addShard( "mongo-shard-03/mongo-shard-03a:27017")
sh.addShard( "mongo-shard-03/mongo-shard-03b:27017")
// sh.addShard( "mongo-shard-03/mongo-shard-03c:27017")
