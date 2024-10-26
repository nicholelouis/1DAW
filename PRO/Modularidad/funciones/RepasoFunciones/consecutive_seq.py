# **************************************************
# IDENTIFICANDO SECUENCIAS CONSECUTIVAS DE UN TAMAÑO
# **************************************************



def first_repeating_number(nums, target_count, current_count=None, last_number=None):
    # Si la lista está vacía, no hay repetición.
    if not nums:
        return False
    
    # Si `current_count` y `last_number` no están definidos, inicialízalos.
    if current_count is None or last_number is None:
        current_count = 1
        last_number = nums[0]
    else:
        # Si el número actual es igual al último número, incrementa el contador.
        if nums[0] == last_number:
            current_count += 1
        else:
            # Si el número actual es diferente al último número, reinicia el contador.
            current_count = 1
            last_number = nums[0]
    
    # Si el contador alcanza el objetivo, devuelve el número.
    if current_count == target_count:
        return nums[0]
    
    # Llama recursivamente a la función con la lista restante.
    return first_repeating_number(nums[1:], target_count, current_count, last_number)

