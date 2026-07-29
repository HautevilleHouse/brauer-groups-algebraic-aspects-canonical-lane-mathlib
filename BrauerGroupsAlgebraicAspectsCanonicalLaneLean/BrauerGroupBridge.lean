import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.AlgebraicBrauerObjects

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BrauerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
