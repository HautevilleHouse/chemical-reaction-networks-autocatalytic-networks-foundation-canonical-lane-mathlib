import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticSetFoundations where
  autocatalyticSet : Type u
  closureProperty : Prop
  setGeneration : Prop
  closurePropertyTerm : closureProperty
  setGenerationTerm : setGeneration

structure AutocatalyticSetFoundationsEvidence (S : AutocatalyticSetFoundations) where
  closurePropertyClosed : S.closureProperty
  setGenerationClosed : S.setGeneration

def AutocatalyticSetFoundationsClosed (S : AutocatalyticSetFoundations) : Prop :=
  S.closureProperty ∧ S.setGeneration

theorem autocatalytic_set_foundations_closed_from_evidence (S : AutocatalyticSetFoundations)
    (E : AutocatalyticSetFoundationsEvidence S) : AutocatalyticSetFoundationsClosed S := by
  exact And.intro E.closurePropertyClosed E.setGenerationClosed

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
