import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroup

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerAdmissibleClass (k : Type) [Field k] where
  object : BrauerEquivalenceClass k
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def brauerAdmittedClosure (k : Type) [Field k] (A : BrauerAdmissibleClass k) : Prop :=
  (A.object.representative.central ∧ A.object.representative.simple) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
