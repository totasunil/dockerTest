// @GENERATOR:play-routes-compiler
// @SOURCE:C:/Users/stota/Desktop/myfirstplayinscala/conf/routes
// @DATE:Thu May 24 13:57:40 IST 2018


package router {
  object RoutesPrefix {
    private var _prefix: String = "/"
    def setPrefix(p: String): Unit = {
      _prefix = p
    }
    def prefix: String = _prefix
    val byNamePrefix: Function0[String] = { () => prefix }
  }
}
