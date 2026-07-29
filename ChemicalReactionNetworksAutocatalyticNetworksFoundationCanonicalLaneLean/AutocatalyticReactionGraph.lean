import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean

structure AutocatalyticReactionGraph where
  species : Type u
  reactions : Type v
  stoichiometry : reactions → species → ℤ
  autocatalyticReaction : reactions → Prop
  graphConnectivity : Prop
  autocatalyticLoops : Prop
  graphConnectivityTerm : graphConnectivity
  autocatalyticLoopsTerm : autocatalyticLoops

structure AutocatalyticReactionGraphEvidence (G : AutocatalyticReactionGraph) where
  graphConnectivityClosed : G.graphConnectivity
  autocatalyticLoopsClosed : G.autocatalyticLoops

def AutocatalyticReactionGraphClosed (G : AutocatalyticReactionGraph) : Prop :=
  G.graphConnectivity ∧ G.autocatalyticLoops

theorem autocatalytic_reaction_graph_closed_from_evidence (G : AutocatalyticReactionGraph)
    (E : AutocatalyticReactionGraphEvidence G) : AutocatalyticReactionGraphClosed G := by
  exact And.intro E.graphConnectivityClosed E.autocatalyticLoopsClosed

end ChemicalReactionNetworksAutocatalyticNetworksFoundationCanonicalLaneLean
end HautevilleHouse
