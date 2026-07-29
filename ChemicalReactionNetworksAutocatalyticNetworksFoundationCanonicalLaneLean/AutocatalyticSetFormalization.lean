import chemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Autocatalytic Set Formalization Package
-/

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticSetFormalizationPackage where
  autocatalyticSetDefined : Prop
  closurePropertyHolds : Prop
  selfSustainingConditionVerified : Prop
  catalyticFactionComputed : Prop

structure AutocatalyticSetFormalizationEvidence (A : AutocatalyticSetFormalizationPackage) where
  autocatalyticSetDefinedClosed : A.autocatalyticSetDefined
  closurePropertyHoldsClosed : A.closurePropertyHolds
  selfSustainingConditionVerifiedClosed : A.selfSustainingConditionVerified
  catalyticFactionComputedClosed : A.catalyticFactionComputed

def AutocatalyticSetFormalizationClosed (A : AutocatalyticSetFormalizationPackage) : Prop :=
  A.autocatalyticSetDefined ∧ A.closurePropertyHolds ∧
  A.selfSustainingConditionVerified ∧ A.catalyticFactionComputed

theorem autocatalytic_set_formalization_closed_from_evidence
    (A : AutocatalyticSetFormalizationPackage) (E : AutocatalyticSetFormalizationEvidence A) :
    AutocatalyticSetFormalizationClosed A := by
  exact And.intro E.autocatalyticSetDefinedClosed
    (And.intro E.closurePropertyHoldsClosed
      (And.intro E.selfSustainingConditionVerifiedClosed
        E.catalyticFactionComputedClosed))

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse