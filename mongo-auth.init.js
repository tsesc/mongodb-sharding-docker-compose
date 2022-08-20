use admin
admin.createUser(
  {
    user: "admin",
    pwd: "admin",
    roles: [ { role: "root", db: "admin" } ]
  }
)
db.auth("admin", "admin")
db.grantRolesToUser("admin", [ { role: "readWrite", db: "admin" } ])