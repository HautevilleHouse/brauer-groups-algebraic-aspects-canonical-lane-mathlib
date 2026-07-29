import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupAdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

def bridgeClosed (k : Type) [Field k] (A : BrauerAdmissibleClass k) : Prop :=
  A.object.representative.central ∧ A.object.representative.simple

theorem bridge_from_admissible_class (k : Type) [Field k] (A : BrauerAdmissibleClass k) : bridgeClosed k A := by
  exact And.intro A.object.representative.centralTerm A.object.representative.simpleTerm

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
