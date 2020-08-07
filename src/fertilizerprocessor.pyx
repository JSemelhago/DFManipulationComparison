
#cdef before any declaration (cpdef for functions and int/float... in parameters)

cpdef dict fertilizerCount(list areas, list items):
    cdef count = dict()
    combined = [list(a) for a in zip(areas,items)]
    cdef item

    for item in combined:
        item = '/'.join(item)
        count[item] = count.get(item,0)+1
    return count





