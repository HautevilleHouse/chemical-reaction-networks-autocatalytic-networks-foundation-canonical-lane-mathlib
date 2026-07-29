import chemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Random Graph Autocatalysis Package
-/

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure RandomGraphAutocatalysisPackage where
  randomGraphModelDefined : Prop
  autocatalyticSetEmergence : Prop
  degreeDistributionCharacterized : Prop
  phaseTransitionIdentified : Prop

structure RandomGraphAutocatalysisEvidence (R : RandomGraphAutocatalysisPackage) where
  randomGraphModelDefinedClosed : R.randomGraphModelDefined
  autocatalyticSetEmergenceClosed : R.autocatalyticSetEmergence
  degreeDistributionCharacterizedClosed : R.degreeDistributionCharacterized
  phaseTransitionIdentifiedClosed : R.phaseTransitionIdentified

def RandomGraphAutocatalysisClosed (R : RandomGraphAutocatalysisPackage) : Prop :=
  R.randomGraphModelDefined ∧ R.autocatalyticSetEmergence ∧
  R.degreeDistributionCharacterized ∧ R.phaseTransitionIdentified

theorem random_graph_autocatalysis_closed_from_evidence
    (R : RandomGraphAutocatalysisPackage) (E : RandomGraphAutocatalysisEvidence R) :
    RandomGraphAutocatalysisClosed R := by
  exact And.intro E.randomGraphModelDefinedClosed
    (And.intro E.autocatalyticSetEmergenceClosed
      (And.intro E.degreeDistributionCharacterizedClosed
        E.phaseTransitionIdentifiedClosed))

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse