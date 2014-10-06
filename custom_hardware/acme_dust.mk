# Example custom hardware configuration

MCU := STM32F103CB
MCU_SERIES := stm32f1
MCU_F1_LINE := performance

# This is the USB product id code
PRODUCT_ID := 0003

# Debugging throbber LED (eg, for exceptions)
ERROR_LED_PORT := GPIOB
ERROR_LED_PIN  := 1

# These are defined in libmaple proper under ./support/ld/stm32/mem/. If you
# don't find one matching your chip, please submit patches upstream ASAP!
LD_MEM_DIR := sram_20k_flash_128k
