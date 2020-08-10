
#cdef before any declaration (cpdef for functions and int/float... in parameters)

cpdef list fertilizerCount(list areas, list items, list units, list values):
    cdef count = dict()
    cdef combined = list()


    combined = [list(a) for a in zip(areas,items,units,values)]

    # cdef item
    #
    # for item in combined:
    #     item = '/'.join(item)
    #     count[item] = count.get(item,0)+1
    return combined





