import psycopg2
import matplotlib.pyplot as plt

def fetch_rows(query):
    conn = psycopg2.connect(database="lab3_bd",
                        user="postgres",
                        host='localhost',
                        password="jrnftlh",
                        port=5432)
    try:
        cur = conn.cursor()
        cur.execute(query)
        return cur.fetchall()
    finally:
        conn.close()



# query_1 = "SELECT c.name, avg(b.rating) FROM book b join category c on c.category_id=b.category_id group by c.name"

# ratings = []
# categories = []
# rows = fetch_rows(query_1)
# for row in rows:
#     print(row)
#     ratings.append(row[1])
#     categories.append(row[0])

# plt.bar(categories, ratings)
# plt.xlabel('Book category')
# plt.ylabel('Average rating')
# plt.show()



# query_2 = "SELECT c.name, count(b.book_id) * 100/ (SELECT count(*) from book) FROM book b join category c on c.category_id=b.category_id group by c.name"
# rows = fetch_rows(query_2)
# vals = []
# labels = []
# for row in rows:
#     print(row)
#     labels.append(row[0])
#     vals.append(row[1])

# fig, ax = plt.subplots()
# ax.pie(vals, labels=labels, autopct='%1.1f%%')
# ax.axis("equal")
# plt.show()




query_3 = """SELECT a.name, avg(b.rating) ar FROM book b 
    join book_author ba on ba.book_id=b.book_id  
    join author a on a.author_id=ba.author_id
    group by a.name
    order by ar asc

"""

ratings = []
authors = []
rows = fetch_rows(query_3)
for row in rows:
    print(row)
    ratings.append(row[1])
    authors.append(row[0])

plt.bar(authors, ratings)
plt.xlabel('Author')
plt.ylabel('Average rating')
plt.show()

