from tables.work_with_tables import get_data_from, get_all_tables, insert_into, get_full_incomes, get_low_cost_products, \
    get_all_earned_money

menu = """1. Show all tables
2. SHow table info
3. Insert information in table
4. Show full incomes with product
5. Select low cost products
6. Get all earned money
0. Exit\n"""


def show_table_info():
    table = input('Enter table name: ')
    return get_data_from(table)


def insert_info_into_table():
    table = input('Enter table name: ')
    info = input('Enter information: ')
    return insert_into(table, info)


while True:
    code = input(menu)
    match code:
        case '1':
            print(get_all_tables())
        case '2':
            print(show_table_info())
        case '3':
            print(insert_info_into_table())
        case '4':
            print(get_full_incomes())
        case '5':
            print(get_low_cost_products())
        case '6':
            print(get_all_earned_money())
        case '0':
            break
