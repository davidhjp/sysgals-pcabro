#include "sysgals.h"

void sysgals_initialize() {
	sgl_ConnectChan(&__chan_Cabro_C1, &__chan_Buffer_C1);
}
