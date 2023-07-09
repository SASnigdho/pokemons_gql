class Query {
  static const allPokemons = """
      {
            pokemons(first: 1000) {
              id
              name
              image
              classification
              height {
                minimum
                maximum
              }
              weight {
                minimum
                maximum
              }
              maxHP
              maxCP
              resistant
              
              attacks {
                fast {
                  name,
                  type,
                  damage
                }
                special {
                  name,
                  type,
                  damage
                }
              }
              
              weaknesses
              fleeRate
              maxCP
              evolutionRequirements {
                name, amount
              }
            }
      }
      """;
}
