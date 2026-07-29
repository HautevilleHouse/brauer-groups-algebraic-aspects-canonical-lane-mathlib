import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupBridgeLemmas

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

def gateClosed (k : Type) [Field k] (A : BrauerAdmissibleClass k) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (k : Type) [Field k] (A : BrauerAdmissibleClass k) : gateClosed k A := by
  exact A.gateWitness

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
