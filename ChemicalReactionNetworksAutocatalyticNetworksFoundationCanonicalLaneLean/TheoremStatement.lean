import ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticNetworkObject where
  speciesCount : Nat
  reactionCount : Nat
  stoichiometricMatrix : Type
  fluxSpaceDimension : Nat
  autocatalyticCycles : Prop
  conclusion : autocatalyticCycles

def AutocatalyticNetworkClosed (O : AutocatalyticNetworkObject) : Prop :=
  O.autocatalyticCycles

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse