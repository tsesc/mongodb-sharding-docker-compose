// use admin
db.createUser(
  {
    user: "admin",
    pwd: "admin",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)
// db.createUser(
//   {
//     user: "root",
//     pwd: "root",
//     roles: [
//       { role: "userAdminAnyDatabase", db: "admin" },
//       { role: "userAdminAnyDatabase", db: "admin" },
//       { role: "userAdmin", db: "admin" },
//       { role: "readWrite", db: "admin" },
//       { role: "dbAdmin", db: "admin" },
//       { role: "clusterAdmin", db: "admin" },
//       { role: "readWriteAnyDatabase", db: "admin" },
//       { role: "dbAdminAnyDatabase", db: "admin" },
//     ]
//   }
// )

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