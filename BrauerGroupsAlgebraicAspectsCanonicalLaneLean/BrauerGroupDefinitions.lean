import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure CentralSimpleAlgebra (k : Type) where
  carrier : Type
  algebra : Algebra k carrier
  finiteDimensional : FiniteDimensional k carrier
  central : center k = ⊤
  simple : IsSimpleAlg k carrier

structure BrauerEquivalence (k : Type) (A B : CentralSimpleAlgebra k) where
  isBrauerEquivalent : Nonempty (CentralSimpleAlgebra k)

structure BrauerGroup (k : Type) where
  carrier : Set (CentralSimpleAlgebra k)
  equivalence : BrauerEquivalence k
  groupOperation : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier

def BrauerGroupAdmissible (k : Type) (G : BrauerGroup k) : Prop :=
  G.carrier.Nonempty ∧ G.identity ∈ G.carrier

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
