import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure LumpedAutocatalyticSystems where
  lumpedSpecies : Type u
  effectiveReactions : Type v
  reducedDynamics : Prop
  autocatalyticEffectiveLaw : Prop
  reducedDynamicsTerm : reducedDynamics
  autocatalyticEffectiveLawTerm : autocatalyticEffectiveLaw

structure LumpedAutocatalyticSystemsEvidence (L : LumpedAutocatalyticSystems) where
  reducedDynamicsClosed : L.reducedDynamics
  autocatalyticEffectiveLawClosed : L.autocatalyticEffectiveLaw

def LumpedAutocatalyticSystemsClosed (L : LumpedAutocatalyticSystems) : Prop :=
  L.reducedDynamics ∧ L.autocatalyticEffectiveLaw

theorem lumped_autocatalytic_systems_closed_from_evidence (L : LumpedAutocatalyticSystems)
    (E : LumpedAutocatalyticSystemsEvidence L) : LumpedAutocatalyticSystemsClosed L := by
  exact And.intro E.reducedDynamicsClosed E.autocatalyticEffectiveLawClosed

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
