import chemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean.NetworkAdmittedObject
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AutocatalyticNetworkSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AutocatalyticNetworkAdmittedObject where
  space : AutocatalyticNetworkSpace
  graphType : Prop
  autocatalyticProperty : Prop
  modelReference : Type
  modelTopology : TopologicalSpace modelReference
  networkModelMatches : Prop
  conclusion : networkModelMatches

structure AutocatalyticNetworkEndgameState where
  object : AutocatalyticNetworkAdmittedObject

def AutocatalyticNetworkWitnessClosed (O : AutocatalyticNetworkAdmittedObject) : Prop :=
  O.networkModelMatches

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse