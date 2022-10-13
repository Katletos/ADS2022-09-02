package by.it.group151004.terebey.lesson01;

import java.math.BigInteger;

/*
 * Вам необходимо выполнить способ вычисления чисел Фибоначчи с вспомогательным массивом
 * без ограничений на размер результата (BigInteger)
 */

public class FiboB {

    private long startTime = System.currentTimeMillis();

    private long time() {
        return System.currentTimeMillis() - startTime;
    }

    public static void main(String[] args) {

        //вычисление чисел простым быстрым методом
        FiboB fibo = new FiboB();
        int n = 101010;
        System.out.printf("fastB(%d)=%d \n\t time=%d \n\n", n, fibo.fastB(n), fibo.time());
    }

    BigInteger fastB(Integer n) {
        //здесь нужно реализовать вариант с временем O(n) и памятью O(n)
        if (n < 2) return BigInteger.ONE;
        BigInteger[] massiv = new BigInteger[n];
        massiv[0] = massiv[1] = BigInteger.ONE;
        for (int i = 2; i < n; ++i) {
            massiv[i] = massiv[(i-1)].add(massiv[(i-2)]);
        }
        return massiv[n-1];
    }

}

