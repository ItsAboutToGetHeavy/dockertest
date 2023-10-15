package org.example

import scala.util.Random

/**
 * @author ${user.name}
 */
object App {
  
  def main(args : Array[String]): Unit = {

    val deck = (1 to 52).toList
    def divideDeck(cards: List[Int], currentLeft: List[Int] = Nil, currentRight: List[Int] = Nil): List[Int] = {
      val rand = new Random()
      cards match {
        case Nil => currentLeft.concat(currentRight)
        case x :: xs if (rand.nextBoolean()) => divideDeck(xs, x :: currentLeft, currentRight)
        case x :: xs => divideDeck(xs, currentLeft, x :: currentRight)
      }
    }
    val res = (1 to 5).foldLeft(deck)((deck, x) => divideDeck(deck))

    println(8)
  }
}
