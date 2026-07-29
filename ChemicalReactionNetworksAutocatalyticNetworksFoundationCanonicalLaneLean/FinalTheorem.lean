import canonicalLaneMathlib.AdmissibleClass
import ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

def ConstrainedAutocatalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_autocatalytic_endgame (A : AdmissibleClass) :
    ConstrainedAutocatalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
