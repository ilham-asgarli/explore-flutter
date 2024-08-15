/*
If the route contains slashes, then it is treated as a "deep link",
and before this route is pushed, the routes leading to this one are pushed also.
For example, if the route was /a/b/c, then the app would start with
the three routes /a, /a/b, and /a/b/c loaded, in that order.
 */

class RouterConstants {
  static const notFound = "404";
  static const main = "main";
  static const home = "home";
  static const chooseCountry = "chooseCountry";
  static const signUp = "signUp";
  static const signIn = "signIn";
  static const forgotPassword = "forgotPassword";
  static const resetPassword = "resetPassword";
}
