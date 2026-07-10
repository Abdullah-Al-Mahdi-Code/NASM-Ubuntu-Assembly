#include <stdio.h>

// We tell C the signature of the assembly function
extern long calculate_sum(long a, long b);

int main() {
    long num1 = 500;
    long num2 = 250;

    // Call the assembly function just like a normal C function
    long result = calculate_sum(num1, num2);

    printf("The Assembly function says: %ld + %ld = %ld\n", num1, num2, result);

    return 0;
}
