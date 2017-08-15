<?php
/* создаем класс А */
class A {
    /* создаем публичный метод для объектов класса А */
    public function foo() {
        /* задаем статическую переменную, т.е. не зависящую от объекта  */
        static $x = 0;
        /* используем префиксную форму инкремента */
        echo ++$x;
    }
}
/* создаем класс B наследующий от класса А */
class B extends A {
}
/* создаем первый объект класса А */
$a1 = new A();
/* создаем первый объект класса B */
$b1 = new B();
/* выполняем метод в объекте класса А получаем 1 */
$a1->foo();
/* выполняем метод в объекте класса B получаем 1
* (т.к. классы разные у каждого из них своя статическая переменная $x)
*/
$b1->foo();
/* еще раз выполняем метод в объекте класса А получаем 2 */
$a1->foo();
/* еще раз выполняем метод в объекте класса B получаем 2 */
$b1->foo();