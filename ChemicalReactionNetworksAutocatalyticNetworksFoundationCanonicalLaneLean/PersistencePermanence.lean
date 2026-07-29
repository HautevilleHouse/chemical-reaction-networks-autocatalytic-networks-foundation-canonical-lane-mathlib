import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure PersistencePermanencePackage where
  boundedness : Prop
  persistence : Prop
  permanence : Prop
  boundednessClosed : boundedness
  persistenceClosed : persistence
  permanenceClosed : permanence

structure PersistencePermanenceEvidence (P : PersistencePermanencePackage) where
  boundednessClosed : P.boundedness
  persistenceClosed : P.persistence
  permanenceClosed : P.permanence

def PersistencePermanenceClosed (P : PersistencePermanencePackage) : Prop :=
  P.boundedness ∧ P.persistence ∧ P.permanence

theorem persistence_permanence_closed_from_evidence
    (P : PersistencePermanencePackage) (E : PersistencePermanenceEvidence P) :
    PersistencePermanenceClosed P := by
  exact And.intro E.boundednessClosed
    (And.intro E.persistenceClosed E.permanenceClosed)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse