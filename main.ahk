/**
*
**************************
*  Структура подключения
**************************
*
* [main.ahk]                        !!! Программа
* |
* |---[config.ahk]                      Информация о версии, тонкие настройки
* |
* |---[autoexec.ahk]                    Подключение всех функций, классов и интерфейсов
* |   |
* |   |---[functions/autoexec.ahk]      Описание внутри файла | Полключение всех файлов в папке
* |   |   |---[helpers.ahk]
* |   |   +---[...]
* |   |
* |   |---[class/autoexec.ahk]          Описание внутри файла | Полключение всех файлов в папке
* |   |   |---[Debug.class.ahk]
* |   |   +---[...]
* |   |
* |   +---[gui/autoexec.ahk]            Описание внутри файла | Полключение всех файлов в папке
* |       |---[Gui.class.ahk]
* |       +---[...]
* |
* +---[router.ahk]                      Вызов методов классов по событию
*
* [img]                                 Папка с озображениями для интерфейса
*
*/
#NoEnv                            ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn                             ; Enable warnings to assist with detecting common errors.
SendMode Input                    ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%       ; Ensures a consistent starting directory.

; Include config
#include config.ahk

; Include all classes and functions
#include autoexec.ahk

; Include callback router
#include router.ahk

; Include timers
#include timers.ahk

; Include hotkeys
#include hotkeys.ahk
