package com.felicita.supports

import com.felicita.actors.UserRegistryActor._
import com.felicita.actors.SurveyRegistryActor._
import spray.json.RootJsonFormat
import com.felicita.actors.SurveyRegistryActor.ActionPerformed
import com.felicita.actors.UserRegistryActor.ActionPerformedUser

//#json-support
import akka.http.scaladsl.marshallers.sprayjson.SprayJsonSupport
import spray.json.DefaultJsonProtocol

trait JsonSupport extends SprayJsonSupport {

  import DefaultJsonProtocol._

  implicit val subscriberJsonFormat: RootJsonFormat[User] = jsonFormat6(User)
  implicit val subscribersJsonFormat: RootJsonFormat[Users] = jsonFormat1(Users)

  implicit val surveyJsonFormat: RootJsonFormat[Survey] = jsonFormat3(Survey)
  implicit val surveysJsonFormat: RootJsonFormat[Surveys] = jsonFormat1(Surveys)

  implicit val actionPerformedJsonFormat: RootJsonFormat[ActionPerformed] = jsonFormat1(ActionPerformed)
  implicit val actionPerformedJsonFormatUser: RootJsonFormat[ActionPerformedUser] = jsonFormat1(ActionPerformedUser)
}
