import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure ReactionNetwork where
  species : Type u
  reactions : Type v
  stoichiometry : reactions → species → ℤ
  autocatalytic : Prop
  autocatalyticWitness : autocatalytic

structure ReactionNetworkEvidence (R : ReactionNetwork) where
  autocatalyticClosed : R.autocatalytic
  stoichiometryConsistent : Prop
  stoichiometryConsistentClosed : stoichiometryConsistent

def ReactionNetworkClosed (R : ReactionNetwork) : Prop :=
  R.autocatalytic

theorem reaction_network_closed_from_evidence
    (R : ReactionNetwork) (E : ReactionNetworkEvidence R) :
    ReactionNetworkClosed R := by
  exact E.autocatalyticClosed

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse