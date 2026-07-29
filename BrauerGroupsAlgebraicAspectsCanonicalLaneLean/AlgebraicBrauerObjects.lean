import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerAdmittedObject where
  field : Type
  centralSimpleAlgebra : Type
  equivalenceClass : Prop
  brauerGroup : Prop
  conclusion : brauerGroup

structure BrauerEndgameState where
  object : BrauerAdmittedObject

def BrauerWitnessClosed (O : BrauerAdmittedObject) : Prop :=
  O.brauerGroup

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
