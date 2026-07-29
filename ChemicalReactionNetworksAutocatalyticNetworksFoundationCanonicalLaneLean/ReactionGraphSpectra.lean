import chemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Reaction Graph Spectra Package
-/

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure ReactionGraphSpectraPackage where
  laplacianSpectrumBounded : Prop
  algebraicConnectivityPositive : Prop
  spectralGapEstablished : Prop
  eigenvalueDistributionCharacterized : Prop

structure ReactionGraphSpectraEvidence (R : ReactionGraphSpectraPackage) where
  laplacianSpectrumBoundedClosed : R.laplacianSpectrumBounded
  algebraicConnectivityPositiveClosed : R.algebraicConnectivityPositive
  spectralGapEstablishedClosed : R.spectralGapEstablished
  eigenvalueDistributionCharacterizedClosed : R.eigenvalueDistributionCharacterized

def ReactionGraphSpectraClosed (R : ReactionGraphSpectraPackage) : Prop :=
  R.laplacianSpectrumBounded ∧ R.algebraicConnectivityPositive ∧
  R.spectralGapEstablished ∧ R.eigenvalueDistributionCharacterized

theorem reaction_graph_spectra_closed_from_evidence
    (R : ReactionGraphSpectraPackage) (E : ReactionGraphSpectraEvidence R) :
    ReactionGraphSpectraClosed R := by
  exact And.intro E.laplacianSpectrumBoundedClosed
    (And.intro E.algebraicConnectivityPositiveClosed
      (And.intro E.spectralGapEstablishedClosed
        E.eigenvalueDistributionCharacterizedClosed))

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse