import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupAdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.brauerGroupElement

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.brauerGroupElement

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
