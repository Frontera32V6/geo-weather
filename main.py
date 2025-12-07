import psycopg


def get_connection():
    return psycopg.connect(
        "dbname=practice user=postgres password=secret host=localhost port=5432"
    )


def test_db():
    conn = get_connection()
    cur = conn.cursor()

    cur.execute("SELECT COUNT(*) FROM cities")
    total = cur.fetchone()[0]
    print(f"Total cities loaded: {total}")

    cur.execute("SELECT city, country FROM cities LIMIT 5")
    rows = cur.fetchall()
    print("Sample rows:")
    for r in rows:
        print(r)

    conn.close()


if __name__ == "__main__":
    test_db()
