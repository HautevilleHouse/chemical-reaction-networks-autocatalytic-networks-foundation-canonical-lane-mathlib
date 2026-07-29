import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure SpeciesSet where
  species : Type
  concentrations : species → ℝ

structure ReactionNetwork where
  speciesSet : SpeciesSet
  reactions : List (SpeciesSet → SpeciesSet)
  rateConstants : List ℝ

structure AutocatalyticNetwork extends ReactionNetwork where
  autocatalyticLoops : Prop

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse