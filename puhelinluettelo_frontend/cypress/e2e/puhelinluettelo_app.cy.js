describe('Puhelinluettelo app', () => {
  it('front page can be opened', () => {
    cy.visit('http://localhost:3001/')
    cy.contains('Phonebook')
    cy.contains('Numbers')
  })

  it('new number can be added and deleted', () => {
    cy.visit('http://localhost:3001/')

    cy.get('input').eq(1).type('Test User')
    cy.get('input').eq(2).type('040-04004004')
    cy.get('button').eq(0).click()

    cy.contains('Test User 040-04004004')

    cy.get('button').last().click()

    cy.contains('Test User 040-04004004').should('not.exist')
  })
})
