import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure GraphSpectraConnectivityPackage where
  graph : Type u
  adjacencyMatrix : graph → graph → ℕ
  spectra : List ℝ
  connectivity : Prop
  spectraComputed : spectra
  connectivityClosed : connectivity

structure GraphSpectraConnectivityEvidence (G : GraphSpectraConnectivityPackage) where
  spectraComputedClosed : G.spectraComputed
  connectivityClosed : G.connectivity

def GraphSpectraConnectivityClosed (G : GraphSpectraConnectivityPackage) : Prop :=
  G.spectraComputed ∧ G.connectivity

theorem graph_spectra_connectivity_closed_from_evidence
    (G : GraphSpectraConnectivityPackage) (E : GraphSpectraConnectivityEvidence G) :
    GraphSpectraConnectivityClosed G := by
  exact And.intro E.spectraComputedClosed E.connectivityClosed

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse