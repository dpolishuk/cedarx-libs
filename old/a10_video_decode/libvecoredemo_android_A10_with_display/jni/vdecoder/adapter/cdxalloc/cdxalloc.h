#ifndef CDX_ALLOC_H
#define CDX_ALLOC_H

#include "cedardev_api.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CEDAR_ENV_INFORMATION {
	unsigned int phymem_start;
	int  phymem_total_size;
	unsigned int  address_macc;
}cedar_env_info_t;

typedef struct {
    void *start_virt;
    void *start_phys;
    int size;
}mapping_t;

int          cdxalloc_open(void);
int          cdxalloc_close(void);
void*        cdxalloc_alloc(int size);
void*        cdxalloc_allocregs();
void         cdxalloc_free(void *address);
unsigned int cdxalloc_vir2phy(void *address);
void         cdxalloc_createmapping(void *virt,void *phys,int size);
#define cedar_dev_name "/dev/cedar_dev"

#ifdef __cplusplus
}
#endif

#endif