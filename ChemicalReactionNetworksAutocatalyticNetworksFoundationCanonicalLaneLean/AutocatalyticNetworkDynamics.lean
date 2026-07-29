import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticNetworkDynamics where
  concentrationSpace : Type u
  flowField : Type v
  fixedPoints : Prop
  autocatalyticGrowth : Prop
  saturationMechanisms : Prop
  fixedPointsTerm : fixedPoints
  autocatalyticGrowthTerm : autocatalyticGrowth
  saturationMechanismsTerm : saturationMechanisms

structure AutocatalyticNetworkDynamicsEvidence (D : AutocatalyticNetworkDynamics) where
  fixedPointsClosed : D.fixedPoints
  autocatalyticGrowthClosed : D.autocatalyticGrowth
  saturationMechanismsClosed : D.saturationMechanisms

def AutocatalyticNetworkDynamicsClosed (D : AutocatalyticNetworkDynamics) : Prop :=
  D.fixedPoints ∧ D.autocatalyticGrowth ∧ D.saturationMechanisms

theorem autocatalytic_network_dynamics_closed_from_evidence (D : AutocatalyticNetworkDynamics)
    (E : AutocatalyticNetworkDynamicsEvidence D) : AutocatalyticNetworkDynamicsClosed D := by
  exact And.intro E.fixedPointsClosed (And.intro E.autocatalyticGrowthClosed E.saturationMechanismsClosed)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
