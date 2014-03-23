name := "play-socle"

version := "1.0-SNAPSHOT"

libraryDependencies ++= Seq(
  javaJdbc,
  javaEbean,
  cache,
  "org.webjars" %% "webjars-play" % "2.2.1-2",
  "org.webjars" % "jquery" % "2.1.0-2",
  "org.webjars" % "require-css" % "0.1.2",
  "org.webjars" % "bootstrap" % "3.1.0"
)

play.Project.playJavaSettings
