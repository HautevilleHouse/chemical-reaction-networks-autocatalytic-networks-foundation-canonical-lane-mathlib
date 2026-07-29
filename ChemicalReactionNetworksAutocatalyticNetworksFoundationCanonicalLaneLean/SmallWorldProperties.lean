import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure SmallWorldPropertiesPackage (N : ReactionNetwork) where
  avgPathLength : ℝ
  clusteringCoefficient : ℝ
  smallWorldCoefficient : ℝ

structure SmallWorldPropertiesEvidence {N : ReactionNetwork}
    (S : SmallWorldPropertiesPackage N) where
  avgPathLengthShort : S.avgPathLength < 10
  clusteringCoefficientHigh : S.clusteringCoefficient > 0.5
  smallWorldCoefficientGe1 : S.smallWorldCoefficient ≥ 1

def SmallWorldPropertiesClosed {N : ReactionNetwork}
    (S : SmallWorldPropertiesPackage N) : Prop :=
  S.avgPathLength < 10 ∧ S.clusteringCoefficient > 0.5 ∧ S.smallWorldCoefficient ≥ 1

theorem small_world_properties_closed_from_evidence
    {N : ReactionNetwork} (S : SmallWorldPropertiesPackage N)
    (E : SmallWorldPropertiesEvidence S) : SmallWorldPropertiesClosed S := by
  exact And.intro E.avgPathLengthShort
    (And.intro E.clusteringCoefficientHigh E.smallWorldCoefficientGe1)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse