import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure PercolationThresholdPackage (N : ReactionNetwork) where
  criticalProb : ℝ
  giantComponentFormation : Prop
  finiteSizeScaling : Prop

structure PercolationThresholdEvidence {N : ReactionNetwork}
    (P : PercolationThresholdPackage N) where
  criticalProbComputed : 0 < P.criticalProb ∧ P.criticalProb < 1
  giantComponentFormationClosed : P.giantComponentFormation
  finiteSizeScalingClosed : P.finiteSizeScaling

def PercolationThresholdClosed {N : ReactionNetwork}
    (P : PercolationThresholdPackage N) : Prop :=
  (0 < P.criticalProb ∧ P.criticalProb < 1) ∧
  P.giantComponentFormation ∧ P.finiteSizeScaling

theorem percolation_threshold_closed_from_evidence
    {N : ReactionNetwork} (P : PercolationThresholdPackage N)
    (E : PercolationThresholdEvidence P) : PercolationThresholdClosed P := by
  exact And.intro E.criticalProbComputed
    (And.intro E.giantComponentFormationClosed E.finiteSizeScalingClosed)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse