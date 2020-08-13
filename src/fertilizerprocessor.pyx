
#cdef before any declaration (cpdef for functions and int/float... in parameters)

cpdef dict fertilizerCount(list areas, list items, list units, list values):
    cdef total = dict()
    cdef combined = list()

    #Only use tonnes, not USD
    combined = [list(row) for row in zip(areas,items,units,values) if row[2]=='tonnes']

    cdef item = list()

    for item in combined:
        item = '_'.join(item[0:3])
        total[item] = 0

    for item in combined:
        key = '_'.join(item[0:3])
        if isinstance(item[3], float):
            total[key] += item[3]

    return total





