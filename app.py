from flask import Flask, render_template, request
import psycopg2
import config

app = Flask(__name__)

def get_connection():
    return psycopg2.connect(
        host=config.DB_HOST,
        port=config.DB_PORT,
        database=config.DB_NAME,
        user=config.DB_USER,
        password=config.DB_PASSWORD
    )

@app.route("/")
def index():
    return render_template("index.html")


@app.route("/search", methods=["POST"])
def search():

    player = request.form["player"]

    conn = get_connection()
    cur = conn.cursor()

    query = """
    SELECT
        g.goal_id,
        p.team_name,
        m.match_id,
        m.match_date,
        m.home_team,
        m.away_team,
        m.stadium,
        g.goal_time
    FROM goal g
    JOIN player p
        ON g.player_id = p.player_id
    JOIN matches m
        ON g.match_id = m.match_id
    WHERE
        CAST(p.player_id AS TEXT) = %s
        OR LOWER(p.name) = LOWER(%s)
    ORDER BY g.goal_id;
    """

    cur.execute(query, (player, player))

    results = cur.fetchall()

    cur.close()
    conn.close()

    return render_template("results.html", results=results)


if __name__ == "__main__":
    app.run(debug=True)