import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGateLemmas

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

def BrauerConstrainedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem brauer_constrained_closure_endgame (A : AdmissibleClass) :
    BrauerConstrainedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
