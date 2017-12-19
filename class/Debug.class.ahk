class Debug
{
	static send_url := ""        ; url для отправки отладочной информации
	static send_level := 0       ; уровень отправляемой на сервер информации
	static send_delay := false   ; частота отправки информации в секундах

	static log := Array()        ; Массив действий (лог)
	static logging_level := 4    ; Уровень логгирования
	static level := Object()
		level.0 := "Disabled"
		level.1 := "Error"
		level.2 := "Warning"
		level.3 := "Info"
		level.4 := "All"

	__New(url := false, level := false, delay := false) {
		this.send_url := url
		this.send_level := level
		this.send_delay := delay
	}

	_(info, position := "Не указано") {
		return this.log_add(info, position, 4)
	}

	info(info, position := "Не указано") {
		return this.log_add(info, position, 3)
	}

	warning(info, position := "Не указано") {
		return this.log_add(info, position, 2)
	}

	error(info, position := "Не указано") {
		return this.log_add(info, position, 1)
	}

	/**
	 * Добавляет строку в лог действий
	 *
	 * @param  {string} Информация о произошедшем действии
	 * @param  {integer} Тип информации о действии
	 * @return {mixed} Возвращает добавленный объект или false, если данный тип отключен
	 */
	log_add(info, position, level := 1) {

		; false, если данный уровень логгирования отключен
		if( level > logging_level )
			return false

		; Добавление лога
		return this.log[] := { "info": info, "position": position, "level": level }
	}

	/**
	 * Отправка отладочной информации на сайт
	 *
	 * @return {boolean} true - если доставлено, иначе false
	 */
	sendLog() {
		this._("Отправка лога на сайт", "Debug.class.ahk")

		; Подготовка лога (log) к отправке
		log := ""
		for key, val in this.log {
			if( val.level > send_level ) {
				continue
			}
			log[] := val
		}

		; Подготовка информации (data) к отправке
		data := Object()
		data.nickname := user_nickname
		data.server   := user_server
		data.version  := program_version
		data.log      := log

		; Использовать cURL
	}
}