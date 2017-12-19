class Debug
{
	static send_url := ""        ; url ��� �������� ���������� ����������
	static send_level := 0       ; ������� ������������ �� ������ ����������
	static send_delay := false   ; ������� �������� ���������� � ��������

	static log := Array()        ; ������ �������� (���)
	static logging_level := 4    ; ������� ������������
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

	_(info, position := "�� �������") {
		return this.log_add(info, position, 4)
	}

	info(info, position := "�� �������") {
		return this.log_add(info, position, 3)
	}

	warning(info, position := "�� �������") {
		return this.log_add(info, position, 2)
	}

	error(info, position := "�� �������") {
		return this.log_add(info, position, 1)
	}

	/**
	 * ��������� ������ � ��� ��������
	 *
	 * @param  {string} ���������� � ������������ ��������
	 * @param  {integer} ��� ���������� � ��������
	 * @return {mixed} ���������� ����������� ������ ��� false, ���� ������ ��� ��������
	 */
	log_add(info, position, level := 1) {

		; false, ���� ������ ������� ������������ ��������
		if( level > logging_level )
			return false

		; ���������� ����
		return this.log[] := { "info": info, "position": position, "level": level }
	}

	/**
	 * �������� ���������� ���������� �� ����
	 *
	 * @return {boolean} true - ���� ����������, ����� false
	 */
	sendLog() {
		this._("�������� ���� �� ����", "Debug.class.ahk")

		; ���������� ���� (log) � ��������
		log := ""
		for key, val in this.log {
			if( val.level > send_level ) {
				continue
			}
			log[] := val
		}

		; ���������� ���������� (data) � ��������
		data := Object()
		data.nickname := user_nickname
		data.server   := user_server
		data.version  := program_version
		data.log      := log

		; ������������ cURL
	}
}