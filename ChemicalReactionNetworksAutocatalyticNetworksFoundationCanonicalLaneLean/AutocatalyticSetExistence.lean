import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticSetExistencePackage where
  network : ReactionNetwork
  autocatalyticSetExists : Prop
  minimalSetExists : Prop
  maximalSetExists : Prop
  autocatalyticSetExistsClosed : autocatalyticSetExists
  minimalSetExistsClosed : minimalSetExists
  maximalSetExistsClosed : maximalSetExists

structure AutocatalyticSetExistenceEvidence (A : AutocatalyticSetExistencePackage) where
  autocatalyticSetExistsClosed : A.autocatalyticSetExists
  minimalSetExistsClosed : A.minimalSetExists
  maximalSetExistsClosed : A.maximalSetExists

def AutocatalyticSetExistenceClosed (A : AutocatalyticSetExistencePackage) : Prop :=
  A.autocatalyticSetExists ∧ A.minimalSetExists ∧ A.maximalSetExists

theorem autocatalytic_set_existence_closed_from_evidence
    (A : AutocatalyticSetExistencePackage) (E : AutocatalyticSetExistenceEvidence A) :
    AutocatalyticSetExistenceClosed A := by
  exact And.intro E.autocatalyticSetExistsClosed
    (And.intro E.minimalSetExistsClosed E.maximalSetExistsClosed)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse