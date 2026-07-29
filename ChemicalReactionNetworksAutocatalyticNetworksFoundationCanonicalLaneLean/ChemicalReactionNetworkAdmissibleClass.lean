import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure ChemicalReactionNetworkAdmittedObject where
  reactionNetwork : Type u
  autocatalyticCore : Prop
  autocatalyticCoreTerm : autocatalyticCore

structure AdmissibleClass where
  object : ChemicalReactionNetworkAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalReactionNetworkAdmittedObject.autocatalyticCore A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
