use admin
db.createUser(
  {
    user: "admin",
    pwd: "admin",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)
db.createUser(
  {
    user: "admin",
    pwd: "admin",
    roles: [{
      role: [
        "userAdminAnyDatabase",
        "userAdmin",
        "readWrite",
        "dbAdmin",
        "clusterAdmin",
        "readWriteAnyDatabase",
        "dbAdminAnyDatabase"
      ],
      db: "admin"
    }]
  }
)

// db.updateUser(
//   "admin",
//   {
//     roles : [
//       "userAdminAnyDatabase",
//       "userAdmin",
//       "readWrite",
//       "dbAdmin",
//       "clusterAdmin",
//       "readWriteAnyDatabase",
//       "dbAdminAnyDatabase"
//     ]
//   }
// );


// db.auth("admin", "admin")
// db.grantRolesToUser("admin", [ { role: "readWrite", db: "admin" } ])