rs.initiate(
   {
      _id: "mongo-shard-03",
      version: 1,
      members: [
         { _id: 0, host : "mongo-shard-03a:27017" },
         { _id: 1, host : "mongo-shard-03b:27017" },
         { _id: 2, host : "mongo-shard-03c:27017" }
      ]
   }
)
