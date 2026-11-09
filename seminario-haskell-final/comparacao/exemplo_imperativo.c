#include <stdio.h>

int main(void) {
    int tarefas[3] = {0, 0, 0};
    int id = 1;

    /* Em C, alteramos diretamente o elemento do vetor. */
    tarefas[id] = 1;

    printf("Estados das tarefas: ");
    for (int i = 0; i < 3; i++) {
        printf("%d ", tarefas[i]);
    }
    printf("\n");

    return 0;
}
