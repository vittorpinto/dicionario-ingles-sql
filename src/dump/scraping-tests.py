import requests
from bs4 import BeautifulSoup
import csv

# 2667 / 15154

letras = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
]

with open("words.csv", "w", newline="", encoding="utf-8") as f:

    writer = csv.writer(f, quoting=csv.QUOTE_NONNUMERIC)

    writer.writerow(["COUNT", "WORDS", "POS", "MEANING"])

    count = 0

    # create a set to store the visited urls
    visited = set()

    for letra in letras:

        url = f"https://www.mso.anu.edu.au/%7Eralph/OPTED/v003/wb1913_{letra}.html"

        # check if the url has already been visited
        if url not in visited:

            # add the url to the visited set
            visited.add(url)

            res = requests.get(url)

            soup = BeautifulSoup(res.text, "html.parser")

            words = soup.find_all("p")

            for word in words:

                count += 1

                try:
                    word_text = word.b.text

                except AttributeError:
                    word_text = ""

                try:
                    pos_text = word.i.text

                except AttributeError:
                    pos_text = ""

                meaning_text = (
                    word.text.replace(word_text, "", 1)
                    .replace(pos_text, "")
                    .replace("()", "")
                    .strip()
                )

                if len(meaning_text) >= 200 :
                  continue
                else:
                  writer.writerow([count, word_text, pos_text, meaning_text])
                writer.writerow([count, word_text, pos_text, meaning_text])