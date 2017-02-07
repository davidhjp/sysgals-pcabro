#include "sysgals.h"

void sysgals_initialize() {
	sgl_ConnectQ(&__q_Pabro_C1,  &__q_Buffer_C1);
	sgl_ConnectQ(&__q_Buffer_C2, &__q_Cabro_C2);
}
