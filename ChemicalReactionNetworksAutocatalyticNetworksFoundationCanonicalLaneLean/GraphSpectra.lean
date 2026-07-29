import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure GraphSpectraPackage (N : ReactionNetwork) where
  adjacencyMatrix : Matrix ℝ (SpeciesSet.species N.speciesSet) (SpeciesSet.species N.speciesSet)
  eigenvalues : List ℝ
  spectralRadius : ℝ
  spectralGap : ℝ

structure GraphSpectraEvidence {N : ReactionNetwork}
    (G : GraphSpectraPackage N) where
  eigenvaluesComputed : G.eigenvalues.length = Fintype.card (SpeciesSet.species N.speciesSet)
  spectralRadiusPos : G.spectralRadius > 0
  spectralGapPos : G.spectralGap > 0

def GraphSpectraClosed {N : ReactionNetwork}
    (G : GraphSpectraPackage N) : Prop :=
  G.eigenvalues.length = Fintype.card (SpeciesSet.species N.speciesSet) ∧
  G.spectralRadius > 0 ∧ G.spectralGap > 0

theorem graph_spectra_closed_from_evidence
    {N : ReactionNetwork} (G : GraphSpectraPackage N)
    (E : GraphSpectraEvidence G) : GraphSpectraClosed G := by
  exact And.intro E.eigenvaluesComputed
    (And.intro E.spectralRadiusPos E.spectralGapPos)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse