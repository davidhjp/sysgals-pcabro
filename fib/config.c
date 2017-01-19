#include "sysgals.h"

void sysgals_initialize() {
	sgl_ConnectChan(&__chan_Pabro_C1, &__chan_Buffer_C1);
	sgl_ConnectChan(&__chan_Buffer_C2, &__chan_Cabro_C2);
}
