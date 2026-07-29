import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticCorePackage (N : AutocatalyticNetwork) where
  coreSpecies : SpeciesSet
  catalyzedReactions : List (SpeciesSet → SpeciesSet)
  selfAmplification : Prop
  coreMinimal : Prop

structure AutocatalyticCoreEvidence {N : AutocatalyticNetwork}
    (C : AutocatalyticCorePackage N) where
  selfAmplificationClosed : C.selfAmplification
  coreMinimalClosed : C.coreMinimal

def AutocatalyticCoreClosed {N : AutocatalyticNetwork}
    (C : AutocatalyticCorePackage N) : Prop :=
  C.selfAmplification ∧ C.coreMinimal

theorem autocatalytic_core_closed_from_evidence
    {N : AutocatalyticNetwork} (C : AutocatalyticCorePackage N)
    (E : AutocatalyticCoreEvidence C) : AutocatalyticCoreClosed C := by
  exact And.intro E.selfAmplificationClosed E.coreMinimalClosed

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse