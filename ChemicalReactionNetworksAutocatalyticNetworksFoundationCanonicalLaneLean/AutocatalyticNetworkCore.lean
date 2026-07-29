import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticNetwork where
  speciesIndex : Set Nat
  reactionGraph : SpeciesIndex × SpeciesIndex → Prop
  autocatalyticClosure : Prop
  catalystPreserved : Prop

structure AutocatalyticEvidence (A : AutocatalyticNetwork) where
  autocatalyticClosureClosed : A.autocatalyticClosure
  catalystPreservedClosed : A.catalystPreserved

def AutocatalyticClosed (A : AutocatalyticNetwork) : Prop :=
  A.autocatalyticClosure ∧ A.catalystPreserved

theorem autocatalytic_closed_from_evidence (A : AutocatalyticNetwork)
    (E : AutocatalyticEvidence A) : AutocatalyticClosed A := by
  exact And.intro E.autocatalyticClosureClosed E.catalystPreservedClosed

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
