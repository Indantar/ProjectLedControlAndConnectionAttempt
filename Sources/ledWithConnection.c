
#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "board.h"

static char ch;
uint32_t sock;
void setUpRTCS();

void setUpRTCS(){
	_rtcs_if_handle ihandle;
	uint32_t error;
	/* For Ethernet driver: */
	_enet_handle ehandle;
	/* For PPP Driver: */
	FILE_PTR pfile;
	/* Change the priority: */
	_RTCSTASK_priority = 7;
	error = RTCS_create();
	if (error) {
	printf("\nFailed to create RTCS, error = %X", error);
	return;
	}
	/* Enable IP forwarding: */
	_IP_forward = TRUE;
	/* Set up the Ethernet driver: */
	error = ENET_initialize(ENET_DEVICE, enet_local, 0, &ehandle);
	if (error) {
	printf("\nFailed to initialize Ethernet driver: %s",
	ENET_strerror(error));
	return;
	}
	error = RTCS_if_add(ehandle, RTCS_IF_ENET, &ihandle);
	if (error) {
	printf("\nFailed to add interface for Ethernet, error = %x",
	error);
	return;
	}
	error = RTCS_if_bind(ihandle, enet_ipaddr, enet_ipmask);
	if (error) {
	printf("\nFailed to bind interface for Ethernet, error = %x",
	error);
	return;
	}
	printf("\nEthernet device %d bound to %X",
	ENET_DEVICE, enet_ipaddr);
	/* Install a default gateway: */
	RTCS_gate_add(GATE_ADDR, INADDR_ANY, INADDR_ANY);
}
int main(void)
{
	hardware_init();
	setUpRTCS();
	sock = socket(PF_INET, SOCK_STREAM, 0);
	configure_gpio_pins(PORTB_IDX);
	configure_gpio_pins(PORTE_IDX);
	GPIO_DRV_SetPinDir(kGpioLED1, kGpioDigitalOutput);
	GPIO_DRV_SetPinDir(kGpioLED2, kGpioDigitalOutput);
	GPIO_DRV_SetPinDir(kGpioLED3, kGpioDigitalOutput);
	PRINTF("LED Color Select:\n\r");
	PRINTF("R: RED/n/rG: Green/n/rB: Blue\n\r");
	while(1){
	PRINTF("Please Select LED:\n\r");
		ch = GETCHAR();
		switch(ch){
			case 'r':
			case 'R':
				PRINTF("Red led on\n\r");
				LED1_ON;
				LED2_OFF;
				LED3_OFF;
				/*GPIO_DRV_WritePinOutput(kGpioLED1, 1);
				GPIO_DRV_WritePinOutput(kGpioLED2, 0);
				GPIO_DRV_WritePinOutput(kGpioLED3, 1);*/
				break;
			case 'g':
			case 'G':
				PRINTF("Green led on\n\r");
				LED1_OFF;
				LED2_ON;
				LED3_OFF;
				/*GPIO_DRV_WritePinOutput(kGpioLED1, 1);
				GPIO_DRV_WritePinOutput(kGpioLED2, 1);
				GPIO_DRV_WritePinOutput(kGpioLED3, 0);*/
				break;
			case 'b':
			case 'B':
				LED1_OFF;
				LED2_OFF;
				LED3_ON;
				PRINTF("Blue led on\n\r");
				/*GPIO_DRV_WritePinOutput(kGpioLED1, 0);
				GPIO_DRV_WritePinOutput(kGpioLED2, 1);
				GPIO_DRV_WritePinOutput(kGpioLED3, 1);*/
				break;
			default:
				PRINTF("Wrong selection go again\n\r");
				break;

		}
	}
    return 0;
}
////////////////////////////////////////////////////////////////////////////////
// EOF
////////////////////////////////////////////////////////////////////////////////
