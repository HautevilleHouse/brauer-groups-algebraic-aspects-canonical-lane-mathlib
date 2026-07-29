import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerGroup (k : Type) [Field k] where
  carrier : Type u
  algebraStructure : Algebra k carrier
  finiteDimensional : FiniteDimensional k carrier
  central : Prop
  simple : Prop
  centralTerm : central
  simpleTerm : simple

def BrauerGroupEquiv (B1 B2 : BrauerGroup k) [Field k] : Prop :=
  Nonempty (AlgEquiv k B1.carrier B2.carrier)

structure BrauerEquivalenceClass (k : Type) [Field k] where
  representative : BrauerGroup k

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
