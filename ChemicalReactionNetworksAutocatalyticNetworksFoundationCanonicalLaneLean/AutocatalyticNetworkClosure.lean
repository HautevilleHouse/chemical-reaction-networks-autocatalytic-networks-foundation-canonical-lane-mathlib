import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticNetworkClosure where
  closureCondition : Prop
  closureWitness : closureCondition

theorem autocatalytic_closure_from_admissible (A : AdmissibleClass) : AutocatalyticNetworkClosure := by
  refine { closureCondition := admittedClosure A, closureWitness := ?_ }
  exact admit_closed A

theorem admit_closed (A : AdmissibleClass) : admittedClosure A := by
  exact And.intro (bridge_from_admissible_class A) A.gateWitness

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse