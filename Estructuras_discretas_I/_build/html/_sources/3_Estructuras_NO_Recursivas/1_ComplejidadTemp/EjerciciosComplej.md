# Ejercicios 

### Ejercicio 1

```java
public void ejercicio1(int N, int M) {
    int a = 0, b = 0;
    for (int i = 0; i < N; i++) {
        a = a + rand();
    }
    for (int j = 0; j < M; j++) {
        b = b + rand();
    }
}

private int rand() {
    Random aleatorio = new Random();
    return aleatorio.nextInt((int) (System.currentTimeMillis() % 100));
}

```

### Ejercicio 2

```java
public int ejercicio2(int[] arr) {
    int a = 0;
    for (int i = 0; i < arr.length; i++) {
        for (int j = arr.length - 1; j > i; j--) {
            a = a + i + arr[j];
        }
    }
    return a;
}

```

### Ejercicio 3

```java
public int ejercicio3(int[] arr) {
    int i, j, k = 0;
    int n = arr.length;
    for (i = n / 2; i <= n; i++) {
        for (j = 2; j <= n; j = j * 2) {
            k = k + n / 2;
        }
    }
    return k;
}

```

### Ejercicio 4

```java
public int ejercicio4(int[] arr) {
    int k = 0;
    int j = 2;
    int n = arr.length;
    int i = n / 2;

    while (i <= n) {
        while (j <= n) {
            k = i + j + k;
            ++j;
        }
        ++i;
    }
    return k;
}
```

### Ejercicio 5

```java
public static LinkedList<Integer> ejercicio5(int n) {
    boolean A[] = new boolean[n + 1];
    for (int i = 0; i < n; i++)
        A[i] = true;

    for (int p = 2; p * p <= n; p++) {
        if (A[p] == true) {
            for (int i = p * 2; i <= n; i += p)
                A[i] = false;
        }
    }

    LinkedList<Integer> B = new LinkedList<>();
    for (int i = 1; i < A.length; i++) {
        if (A[i])
            B.add(i);
    }

    return B;
}

```



