import math

a = 74285
b = 63614
c = 42355
d = 27383

arrays = [a, b, c, d]

print(sum(arrays))

seats = 60


def proportion_jefferson(arrays, seats):
    """

    :param arrays:
    :param seats:
    :return:
    """

    # total number of arrays(locations)
    local_count = len(arrays)

    print('number of locals', local_count)
    # raw number of pop. per seat
    proportion = round(sum(arrays) / seats, 0)
    print('exact num. of ppl per seat:', proportion)

    area = 0
    seats_result = 0
    while seats_result != seats:
        seats_result = 0
        for local in arrays:
            area += 1
            share = int(local / proportion)
            print('area {} pop: {} | share of seats under proportion of {} : {}'.format(area, local, proportion, share))
            seats_result += share

        print('total seats:', seats_result)
        if seats_result > seats:
            break
        elif seats_result < seats:
            proportion -= 1

    return '1'


a = proportion_jefferson(arrays, seats)
print(a[0])

