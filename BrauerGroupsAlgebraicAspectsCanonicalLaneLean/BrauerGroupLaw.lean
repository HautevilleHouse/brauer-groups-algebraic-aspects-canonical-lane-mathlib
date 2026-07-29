import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerGroupLawPackage {k : Type} [Field k] where
  group : BrauerGroup k
  associativityLaw : ∀ (A B C : CentralSimpleAlgebra k), group.multiplication (group.multiplication A B) C = group.multiplication A (group.multiplication B C)
  identityLaw : ∀ (A : CentralSimpleAlgebra k), group.multiplication A group.identity = A ∧ group.multiplication group.identity A = A
  inverseLaw : ∀ (A : CentralSimpleAlgebra k), ∃ (B : CentralSimpleAlgebra k), group.multiplication A B = group.identity ∧ group.multiplication B A = group.identity

structure BrauerGroupLawEvidence {k : Type} [Field k] (P : BrauerGroupLawPackage k) where
  associativityLawClosed : P.associativityLaw
  identityLawClosed : P.identityLaw
  inverseLawClosed : P.inverseLaw

def BrauerGroupLawClosed {k : Type} [Field k] (P : BrauerGroupLawPackage k) : Prop :=
  P.associativityLaw ∧ P.identityLaw ∧ P.inverseLaw

theorem brauer_group_law_closed_from_evidence {k : Type} [Field k] (P : BrauerGroupLawPackage k) (E : BrauerGroupLawEvidence P) : BrauerGroupLawClosed P := by
  exact And.intro E.associativityLawClosed (And.intro E.identityLawClosed E.inverseLawClosed)

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
