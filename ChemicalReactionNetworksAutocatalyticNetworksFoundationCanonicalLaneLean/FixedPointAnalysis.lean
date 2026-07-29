import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure FixedPointAnalysisPackage (N : AutocatalyticNetwork) where
  fixedPointExists : Prop
  stability : Prop
  uniqueness : Prop

structure FixedPointAnalysisEvidence {N : AutocatalyticNetwork}
    (F : FixedPointAnalysisPackage N) where
  fixedPointExistsClosed : F.fixedPointExists
  stabilityClosed : F.stability
  uniquenessClosed : F.uniqueness

def FixedPointAnalysisClosed {N : AutocatalyticNetwork}
    (F : FixedPointAnalysisPackage N) : Prop :=
  F.fixedPointExists ∧ F.stability ∧ F.uniqueness

theorem fixed_point_analysis_closed_from_evidence
    {N : AutocatalyticNetwork} (F : FixedPointAnalysisPackage N)
    (E : FixedPointAnalysisEvidence F) : FixedPointAnalysisClosed F := by
  exact And.intro E.fixedPointExistsClosed
    (And.intro E.stabilityClosed E.uniquenessClosed)

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse