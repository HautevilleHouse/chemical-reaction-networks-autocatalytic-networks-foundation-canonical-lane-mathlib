import chemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Small-World Topology Package
-/

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure SmallWorldTopologyPackage where
  clusteringCoefficientHigh : Prop
  averagePathLengthShort : Prop
  rewiringProbabilityControlled : Prop
  smallWorldPropertyDemonstrated : Prop

structure SmallWorldTopologyEvidence (S : SmallWorldTopologyPackage) where
  clusteringCoefficientHighClosed : S.clusteringCoefficientHigh
  averagePathLengthShortClosed : S.averagePathLengthShort
  rewiringProbabilityControlledClosed : S.rewiringProbabilityControlled
  smallWorldPropertyDemonstratedClosed : S.smallWorldPropertyDemonstrated

def SmallWorldTopologyClosed (S : SmallWorldTopologyPackage) : Prop :=
  S.clusteringCoefficientHigh ∧ S.averagePathLengthShort ∧
  S.rewiringProbabilityControlled ∧ S.smallWorldPropertyDemonstrated

theorem small_world_topology_closed_from_evidence
    (S : SmallWorldTopologyPackage) (E : SmallWorldTopologyEvidence S) :
    SmallWorldTopologyClosed S := by
  exact And.intro E.clusteringCoefficientHighClosed
    (And.intro E.averagePathLengthShortClosed
      (And.intro E.rewiringProbabilityControlledClosed
        E.smallWorldPropertyDemonstratedClosed))

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse