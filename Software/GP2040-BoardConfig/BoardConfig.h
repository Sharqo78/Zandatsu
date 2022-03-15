/*
 * SPDX-License-Identifier: MIT
 * SPDX-FileCopyrightText: Copyright (c) 2021 Jason Skuby (mytechtoybox.com)
 */

#ifndef PICO_BOARD_CONFIG_H_
#define PICO_BOARD_CONFIG_H_

#include <GamepadEnums.h>


#define BOARD_LEDS_PIN 0

#define LED_BRIGHTNESS_MAXIMUM 100
#define LED_BRIGHTNESS_STEPS 5
#define LED_FORMAT LED_FORMAT_GRB
#define LEDS_PER_PIXEL 1


#define PIN_DPAD_UP     2
#define PIN_DPAD_DOWN   3
#define PIN_DPAD_RIGHT  5
#define PIN_DPAD_LEFT   4
#define PIN_BUTTON_B1   6
#define PIN_BUTTON_B2   7
#define PIN_BUTTON_R2   8
#define PIN_BUTTON_L2   9
#define PIN_BUTTON_B3   10
#define PIN_BUTTON_B4   11
#define PIN_BUTTON_R1   12
#define PIN_BUTTON_L1   13
#define PIN_BUTTON_S1   17
#define PIN_BUTTON_S2   20
#define PIN_BUTTON_L3   18
#define PIN_BUTTON_R3   19
#define PIN_BUTTON_A1   16
#define PIN_BUTTON_A2   -1

#define DEFAULT_SOCD_MODE SOCD_MODE_NEUTRAL
#define BUTTON_LAYOUT BUTTON_LAYOUT_WASD


#define LED_BRIGHTNESS_MAXIMUM 100
#define LED_BRIGHTNESS_STEPS 5
#define LED_FORMAT LED_FORMAT_GRB
#define LEDS_PER_PIXEL 1

#define BUTTON_LAYOUT BUTTON_LAYOUT_WASD
#define BOARD_LEDS_PIN 0

#define LEDS_DPAD_UP     0
#define LEDS_DPAD_DOWN   1
#define LEDS_DPAD_LEFT   2
#define LEDS_DPAD_RIGHT  3
#define LEDS_BUTTON_L2   4
#define LEDS_BUTTON_R2   5
#define LEDS_BUTTON_B2   6
#define LEDS_BUTTON_B1   7
#define LEDS_BUTTON_B3   8
#define LEDS_BUTTON_B4   9
#define LEDS_BUTTON_R1   10
#define LEDS_BUTTON_L1   11

#endif
