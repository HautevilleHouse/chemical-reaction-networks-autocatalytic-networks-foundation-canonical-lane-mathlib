import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticDynamics where
  network : ReactionNetwork
  concentrationSpace : Type w
  flowEquation : Prop
  fixedPoints : Prop
  stability : Prop
  flowEquationClosed : flowEquation
  fixedPointsClosed : fixedPoints
  stabilityClosed : stability

structure AutocatalyticDynamicsEvidence (D : AutocatalyticDynamics) where
  flowEquationClosed : D.flowEquation
  fixedPointsClosed : D.fixedPoints
  stabilityClosed : D.stability

def AutocatalyticDynamicsClosed (D : AutocatalyticDynamics) : Prop :=
  D.flowEquation ∧ D.fixedPoints ∧ D.stability

theorem autocatalytic_dynamics_closed_from_evidence
    (D : AutocatalyticDynamics) (E : AutocatalyticDynamicsEvidence D) :
    AutocatalyticDynamicsClosed D := by
  exact And.intro E.flowEquationClosed
    (And.intro E.fixedPointsClosed E.stabilityClosed)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse