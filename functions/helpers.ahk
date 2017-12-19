
/**
 * Возвращает название первого ключа, которое хранит искомое значение
 *
 * @param {string} Значение для поиска ключа
 * @param {array} Массив для поиска
 * @return {mixed} название ключа или false, если не найдено
 */
array_search(value, array) {
	for key, val in array {
		if( val != value )
			continue
		return key
	}
}

/**
 * Время в UNIX-формате. Для указания своей даты, в качестве параметра нужно передать дату в формате YYYYMMDDHHMISS
 *
 * @type {integer} Возвращает время в unix timestamp
 */
timestamp(time := 0)
{
	return ( time != 0 ? time : A_Now ) - 1970,s
}