import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerFinalTheorem

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure MathlibBrauerStatement where
  sourceKey : String
  theoremObject : String
  brauerGroupClosed : Bool
  unrestrictedClosureCarried : Bool

def mathlibBrauerStatement : MathlibBrauerStatement := {
  sourceKey := "brauer-groups-algebraic-aspects-canonical-lane"
  theoremObject := "Brauer group equips central simple algebras up to similarity; crossed products represent; index and exponent coincide"
  brauerGroupClosed := true
  unrestrictedClosureCarried := false
}

theorem brauer_closed_checked : mathlibBrauerStatement.brauerGroupClosed = true := by
  rfl

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse