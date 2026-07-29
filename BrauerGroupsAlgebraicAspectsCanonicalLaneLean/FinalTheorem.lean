import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupGateLemmas

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

def ConstrainedBrauerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_endgame (A : AdmissibleClass) : ConstrainedBrauerClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
