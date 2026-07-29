import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupGateLemmas

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

def ConstrainedBrauerGroupClosure (k : Type) [Field k] (A : BrauerAdmissibleClass k) : Prop :=
  bridgeClosed k A ∧ gateClosed k A

theorem constrained_brauer_group_endgame (k : Type) [Field k] (A : BrauerAdmissibleClass k) : ConstrainedBrauerGroupClosure k A := by
  exact And.intro (bridge_from_admissible_class k A) (gate_from_admissible_class k A)

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
