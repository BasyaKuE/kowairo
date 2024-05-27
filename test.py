import requests

# Here we define our query as a multi-line string
query = '''
query ($name: String) {
  Staff(search: $name) {
    name {
      full
    }
    characters {
      edges {
        node {
          id
          name {
            full
          }
          media {
            edges {
              node {
                id
                title {
                  romaji
                }
              }
            }
          }
        }
      }
    }
  }
}
'''

# Define our query variables and values that will be used in the query request
variables = {
    'name': "Yuuma Uchida"
}

url = 'https://graphql.anilist.co'

# Make the HTTP Api request
response = requests.post(url, json={'query': query, 'variables': variables})

media = response.json()
print(media)
