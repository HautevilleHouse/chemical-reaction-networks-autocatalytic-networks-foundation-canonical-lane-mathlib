import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure StoichiometricModel where
  speciesIndex : Set Nat
  reactionIndex : Set Nat
  stoichiometricMatrix : Nat → Nat → ℚ
  rankDeficiency : Prop
  coneCondition : Prop
  persistenceCondition : Prop

structure StoichiometricEvidence (S : StoichiometricModel) where
  rankDeficiencyClosed : S.rankDeficiency
  coneConditionClosed : S.coneCondition
  persistenceConditionClosed : S.persistenceCondition

def StoichiometricClosed (S : StoichiometricModel) : Prop :=
  S.rankDeficiency ∧ S.coneCondition ∧ S.persistenceCondition

theorem stoichiometric_closed_from_evidence (S : StoichiometricModel)
    (E : StoichiometricEvidence S) : StoichiometricClosed S := by
  exact And.intro E.rankDeficiencyClosed
    (And.intro E.coneConditionClosed E.persistenceConditionClosed)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
