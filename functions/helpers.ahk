
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